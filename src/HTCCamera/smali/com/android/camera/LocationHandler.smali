.class public Lcom/android/camera/LocationHandler;
.super Ljava/lang/Object;
.source "LocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/LocationHandler$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationHandler"

.field private static mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

.field private static mLocationManager:Landroid/location/LocationManager;


# instance fields
.field private mHTCCamera:Lcom/android/camera/HTCCamera;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/LocationHandler$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/LocationHandler$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Lcom/android/camera/LocationHandler$LocationListener;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/LocationHandler$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, v3}, Lcom/android/camera/LocationHandler$LocationListener;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-void
.end method

.method private checkLocationSetting()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "LocationHandler"

    const-string v3, "checkLocationSetting() has exception"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v4

    goto :goto_0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    const-string v2, "LocationHandler"

    const-string v3, "mLocationManager == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/LocationHandler$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v4

    goto :goto_0
.end method

.method private initLocationManager()V
    .locals 3

    const-string v2, "LocationHandler"

    const-string v0, "LocationHandler"

    const-string v0, "initLocationManager()"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/camera/LocationHandler;->hasGeoTagging()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDisplayGPSindicator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->show_gps_indicator()V

    :cond_0
    const-string v0, "LocationHandler"

    const-string v0, "hasGeoTagging() = true - set mLocationManager"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    const-string v0, "LocationHandler"

    const-string v0, "hasGeoTagging() = false - mLocationManager = null"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hasGeoTagging()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "LocationHandler"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v1, "LocationHandler"

    const-string v1, "hasGeoTagging() = false - contacts mode not provide geo-tagging service"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCameraAdvanceSetting;->isSetDefault()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_geo_tagging"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lcom/android/camera/LocationHandler;->checkLocationSetting()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LocationHandler"

    const-string v1, "hasGeoTagging() = false: select geo-tagging photo - but not use GPS"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v1, "LocationHandler"

    const-string v1, "hasGeoTagging() = true: select geo-tagging photo with GPS"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v1, "LocationHandler"

    const-string v1, "hasGeoTagging() = false: not select geo-tagging photo"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v1, "LocationHandler"

    const-string v1, "hasGeoTagging() = false: reset to default"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0
.end method

.method public releaseLocationHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/LocationHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sput-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public startReceivingLocationUpdates()V
    .locals 10

    const-string v0, "gps"

    const-string v9, "check provider failed "

    const-string v8, "LocationHandler"

    const-string v0, "LocationHandler"

    const-string v0, "startReceivingLocationUpdates()"

    invoke-static {v8, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/LocationHandler;->initLocationManager()V

    sget-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "LocationHandler"

    const-string v0, "mLocationManager == null"

    invoke-static {v8, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "provider Security exception"

    invoke-static {v8, v0, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "provider Security exception"

    invoke-static {v8, v0, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "provider does not exist"

    invoke-static {v8, v0, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "check provider failed "

    invoke-static {v8, v9, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "provider does not exist"

    invoke-static {v8, v0, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v6, v0

    const-string v0, "LocationHandler"

    const-string v0, "check provider failed "

    invoke-static {v8, v9, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopReceivingLocationUpdates()V
    .locals 5

    const-string v4, "LocationHandler"

    const-string v2, "LocationHandler"

    const-string v2, "stopReceivingLocationUpdates()"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    const-string v2, "LocationHandler"

    const-string v2, "mLocationManager == null"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    :try_start_0
    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    sget-object v3, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-object v2, Lcom/android/camera/LocationHandler;->mLocationListeners:[Lcom/android/camera/LocationHandler$LocationListener;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/camera/LocationHandler$LocationListener;->mValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "LocationHandler"

    const-string v2, "fail to remove location listners, ignore"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/android/camera/LocationHandler;->mLocationManager:Landroid/location/LocationManager;

    goto :goto_0
.end method
