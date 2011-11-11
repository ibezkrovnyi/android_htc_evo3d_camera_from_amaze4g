.class Lcom/android/camera/IntentManager$SetasAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetasAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field currImgUri:Landroid/net/Uri;

.field private mInflater:Landroid/view/LayoutInflater;

.field mSetasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IntentManager$CustomAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/IntentManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/IntentManager;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/camera/IntentManager$SetasAdapter;->this$0:Lcom/android/camera/IntentManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->currImgUri:Landroid/net/Uri;

    const-string v0, "image/*"

    iput-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mimeType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/IntentManager$SetasAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/IntentManager$SetasAdapter;->currImgUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/camera/IntentManager$SetasAdapter;->appendSetAsAttachData()V

    return-void
.end method

.method private addResolveInfoToCustomList(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    new-instance v3, Lcom/android/camera/IntentManager$CustomAppInfo;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v0, p2, v4}, Lcom/android/camera/IntentManager$CustomAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/camera/IntentManager$CustomAppInfo;)V
    .locals 5

    iget-object v4, p0, Lcom/android/camera/IntentManager$SetasAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x2020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x202001a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->fake:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p2, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public appendSetAsAttachData()V
    .locals 11

    const/high16 v9, 0x1

    const-string v10, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    iget-object v7, p0, Lcom/android/camera/IntentManager$SetasAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.htccontacts"

    const-string v8, "com.android.htccontacts.AttachImage"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const-string v7, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-direct {p0, v4, v7}, Lcom/android/camera/IntentManager$SetasAdapter;->addResolveInfoToCustomList(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v7, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {p0, v1, v10}, Lcom/android/camera/IntentManager$SetasAdapter;->addResolveInfoToCustomList(Ljava/util/List;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/android/camera/IntentManager$SetasAdapter;->currImgUri:Landroid/net/Uri;

    const-string v8, "image/jpeg"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "mimeType"

    const-string v8, "image/*"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.htc.album"

    const-string v8, "com.htc.album.TabPluginDevice.Wallpaper"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/android/camera/IntentManager$SetasAdapter;->addResolveInfoToCustomList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IntentManager$CustomAppInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/IntentManager$SetasAdapter;->bindView(Landroid/view/View;Lcom/android/camera/IntentManager$CustomAppInfo;)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 8

    iget-object v5, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x300

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/camera/IntentManager$SetasAdapter;->mSetasList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IntentManager$CustomAppInfo;

    iget-object v5, v3, Lcom/android/camera/IntentManager$CustomAppInfo;->resolve:Landroid/content/pm/ResolveInfo;

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/camera/IntentManager$CustomAppInfo;->action:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "FILE_URI"

    iget-object v6, p0, Lcom/android/camera/IntentManager$SetasAdapter;->currImgUri:Landroid/net/Uri;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    move-object v5, v4

    goto :goto_0
.end method
