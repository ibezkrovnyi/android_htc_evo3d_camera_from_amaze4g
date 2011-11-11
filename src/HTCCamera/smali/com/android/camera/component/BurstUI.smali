.class public final Lcom/android/camera/component/BurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "BurstUI.java"


# static fields
.field public static final MSG_BURST_COMPLETED:I = 0x3

.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst UI"


# instance fields
.field private m_BurstController:Lcom/android/camera/component/BurstController;

.field private m_CapturingInstanceID:J

.field private final m_HideEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsModeEntered:Z

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbnailBar:Landroid/view/View;

.field private m_ThumbnailFrames:[Landroid/widget/ImageView;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Burst UI"

    const/4 v1, 0x1

    const v2, 0x7f08003f

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/BurstUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$1;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$2;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$3;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/BurstUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstUI$4;-><init>(Lcom/android/camera/component/BurstUI;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$304(Lcom/android/camera/component/BurstUI;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BurstUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideThumbnailBar()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v6}, Lcom/android/camera/component/BurstUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailFrames:[Landroid/widget/ImageView;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onBurstCompleted()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    goto :goto_0
.end method

.method private onPhotoSaved()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    goto :goto_0
.end method

.method private onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 11

    iget-wide v7, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v9, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailFrames:[Landroid/widget/ImageView;

    aget-object v3, v7, p1

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getThumbnailWidth()I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailFrames:[Landroid/widget/ImageView;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    iget-object v7, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "ActionScreen.Closing"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.ConfirmDeletingMediaMessage"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_QueryDeletionMessageEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ThumbnailButton.Clicked"

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public enterBurstMode()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Re-enter burst mode"

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter burst mode"

    invoke-static {v0, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter burst mode"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-wide v4, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void
.end method

.method public exitBurstMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method

.method public getThumbnailHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onBurstCompleted()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onPhotoSaved()V

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/component/BurstUI;->onThumbnailCreated(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    const v4, 0x7f030007

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    const-string v3, "Burst Controller"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v2

    check-cast v2, Lcom/android/camera/component/BurstController;

    iput-object v2, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    invoke-virtual {v2, p0}, Lcom/android/camera/component/BurstController;->link(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/BurstUI;->m_Inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_Inflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getBaseLayout()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f080021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const/4 v2, 0x5

    new-array v3, v2, [Landroid/widget/ImageView;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const v5, 0x7f080022

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const v5, 0x7f080023

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const v5, 0x7f080024

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const v5, 0x7f080025

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailBar:Landroid/view/View;

    const v5, 0x7f080026

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    iput-object v3, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailFrames:[Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    :goto_2
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->registerListeners()V

    return-void

    :cond_1
    move v3, v4

    goto/16 :goto_1

    :cond_2
    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_2
.end method

.method public isBurstModeEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method
