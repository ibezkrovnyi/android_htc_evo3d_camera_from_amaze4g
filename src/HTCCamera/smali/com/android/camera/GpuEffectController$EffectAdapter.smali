.class Lcom/android/camera/GpuEffectController$EffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "GpuEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectAdapter"
.end annotation


# instance fields
.field names:[Ljava/lang/String;

.field orientation:I

.field final synthetic this$0:Lcom/android/camera/GpuEffectController;

.field values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/GpuEffectController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->getItemOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->orientation:I

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->filterItem()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/GpuEffectController$EffectAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->filterItem()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/GpuEffectController$EffectAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController$EffectAdapter;->filterItem(I)V

    return-void
.end method

.method private filterItem()V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f070022

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f070023

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f070024

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f070025

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v10, v10, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_5

    sget-boolean v10, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v10, :cond_1

    aget-object v10, v8, v1

    const-string v11, "dots"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v10, v8, v1

    const-string v11, "panorama"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_2
    aget-object v10, v8, v1

    const-string v11, "hdr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/HdrController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_3
    aget-object v10, v8, v1

    const-string v11, "burst"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_4
    aget-object v10, v3, v1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v8, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_6

    aget-object v10, v3, v12

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v8, v12

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x0

    :goto_2
    array-length v10, v7

    if-ge v1, v10, :cond_9

    aget-object v10, v7, v1

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v10, v10, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v10

    if-nez v10, :cond_7

    aget-object v10, v7, v1

    const-string v11, "sepia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "vintage-sepia"

    aput-object v10, v7, v1

    :cond_7
    aget-object v10, v2, v1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v7, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private filterItem(I)V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f070022

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f070023

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f070024

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f070025

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez p1, :cond_5

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_5

    sget-boolean v10, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v10, :cond_1

    aget-object v10, v8, v1

    const-string v11, "dots"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v10, v8, v1

    const-string v11, "panorama"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_2
    aget-object v10, v8, v1

    const-string v11, "hdr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/HdrController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_3
    aget-object v10, v8, v1

    const-string v11, "burst"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->isCameraTypeSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_4
    aget-object v10, v3, v1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v8, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_6

    aget-object v10, v3, v12

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v8, v12

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x0

    :goto_2
    array-length v10, v7

    if-ge v1, v10, :cond_9

    aget-object v10, v7, v1

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez p1, :cond_7

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v10}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v10

    iget-object v10, v10, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v10

    if-nez v10, :cond_7

    aget-object v10, v7, v1

    const-string v11, "sepia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "vintage-sepia"

    aput-object v10, v7, v1

    :cond_7
    aget-object v10, v2, v1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v10, v7, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private getIcon(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f02011e

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02011f

    goto :goto_0

    :cond_2
    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02011c

    goto :goto_0

    :cond_3
    const-string v0, "burst"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020112

    goto :goto_0

    :cond_4
    const-string v0, "depth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020115

    goto :goto_0

    :cond_5
    const-string v0, "distortion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f020116

    goto :goto_0

    :cond_6
    const-string v0, "vignette"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f020124

    goto :goto_0

    :cond_7
    const-string v0, "vintage-red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020125

    goto :goto_0

    :cond_8
    const-string v0, "vintage-green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f020113

    goto :goto_0

    :cond_9
    const-string v0, "vintage-high"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f020114

    goto :goto_0

    :cond_a
    const-string v0, "vintage-sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f020121

    goto :goto_0

    :cond_b
    const-string v0, "dots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f020117

    goto/16 :goto_0

    :cond_c
    const-string v0, "contrast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const-string v0, "tilfshift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    const-string v0, "sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f020123

    goto/16 :goto_0

    :cond_f
    const-string v0, "negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f02011d

    goto/16 :goto_0

    :cond_10
    const-string v0, "posterize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f020120

    goto/16 :goto_0

    :cond_11
    const-string v0, "solarize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f020122

    goto/16 :goto_0

    :cond_12
    const-string v0, "mono"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f02011b

    goto/16 :goto_0

    :cond_13
    const-string v0, "aqua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f020111

    goto/16 :goto_0

    :cond_14
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_0
.end method

.method private getItemOrientation(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    array-length v0, v0

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
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_4

    move-object v4, p2

    :goto_0
    if-eqz v4, :cond_3

    const v5, 0x7f08008a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateLinearLayout;

    iget v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->orientation:I

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    const v5, 0x7f08008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f08008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {p0, v5}, Lcom/android/camera/GpuEffectController$EffectAdapter;->getIcon(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->names:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v5, 0x7f08008c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v5}, Lcom/android/camera/GpuEffectController;->access$300(Lcom/android/camera/GpuEffectController;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v5}, Lcom/android/camera/GpuEffectController;->access$300(Lcom/android/camera/GpuEffectController;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v5}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f0a0004

    const v7, 0x7f02011a

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->values:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-object v4

    :cond_4
    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v5}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v5}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f0a0003

    const v7, 0x7f0200af

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/GpuEffectController$EffectAdapter;->getItemOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$EffectAdapter;->orientation:I

    invoke-virtual {p0}, Lcom/android/camera/GpuEffectController$EffectAdapter;->notifyDataSetChanged()V

    return-void
.end method
