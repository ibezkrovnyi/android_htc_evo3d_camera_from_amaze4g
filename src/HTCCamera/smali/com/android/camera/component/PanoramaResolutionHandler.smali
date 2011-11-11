.class public Lcom/android/camera/component/PanoramaResolutionHandler;
.super Ljava/lang/Object;
.source "PanoramaResolutionHandler.java"

# interfaces
.implements Lcom/android/camera/IResolutionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "PanoramaResolutionHandler"

.field private static m_DefaultResolution:Lcom/android/camera/Resolution;

.field private static m_DefaultResolutionWide:Lcom/android/camera/Resolution;

.field private static final m_Resolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v11, "PanoramaResolutionHandler"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/android/camera/component/PanoramaResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/camera/PhotoModeHandler;->getDefaultResolutions(I)[Lcom/android/camera/Resolution;

    move-result-object v8

    sget-object v9, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v9

    sget-object v10, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v10}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v10

    mul-int v5, v9, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v10

    mul-int v6, v9, v10

    if-gt v6, v5, :cond_0

    sget-object v9, Lcom/android/camera/component/PanoramaResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_1

    if-le v6, v2, :cond_0

    move v2, v6

    sput-object v7, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v6, v1, :cond_0

    move v1, v6

    sput-object v7, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    if-nez v9, :cond_3

    const-string v9, "PanoramaResolutionHandler"

    const-string v9, "No default resolution"

    invoke-static {v11, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v9, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    if-nez v9, :cond_4

    const-string v9, "PanoramaResolutionHandler"

    const-string v9, "No default resolution (wide)"

    invoke-static {v11, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/component/PanoramaResolutionHandler;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    return-void
.end method


# virtual methods
.method public getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 6

    const-string v5, "pref_panorama_resolution"

    const-string v3, "pref_panorama_resolution"

    invoke-static {p1, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v0}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v3

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/camera/component/PanoramaResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_0

    :cond_1
    const-string v3, "pref_camera_image_ratio"

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    :goto_2
    const-string v3, "pref_panorama_resolution"

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/camera/component/PanoramaResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    goto :goto_2
.end method

.method public getResolutionMenuItems(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v3, Lcom/android/camera/component/PanoramaResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    :goto_0
    if-ltz v0, :cond_0

    sget-object v3, Lcom/android/camera/component/PanoramaResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    new-instance v3, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 1

    const-string v0, "pref_panorama_resolution"

    return-object v0
.end method
