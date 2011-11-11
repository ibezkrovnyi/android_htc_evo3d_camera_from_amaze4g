.class public final Lcom/android/camera/component/HappyShotUI;
.super Lcom/android/camera/component/UIComponent;
.source "HappyShotUI.java"


# static fields
.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_HAPPY_SHOT_COMPLETED:I = 0x3

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0x5

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Happy Shot UI"


# instance fields
.field private m_CapturingInstanceID:J

.field private m_HappyShotController:Lcom/android/camera/component/HappyShotController;

.field private m_HappyShotReviewImage:Landroid/widget/ImageView;

.field private final m_HideEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsModeEntered:Z

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbnailFrames:[Landroid/widget/ImageView;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Happy Shot UI"

    const/4 v1, 0x1

    const v2, 0x7f08003f

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/HappyShotUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotUI$1;-><init>(Lcom/android/camera/component/HappyShotUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_ShowEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HappyShotUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotUI$2;-><init>(Lcom/android/camera/component/HappyShotUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HappyShotUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotUI$3;-><init>(Lcom/android/camera/component/HappyShotUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HappyShotUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotUI$4;-><init>(Lcom/android/camera/component/HappyShotUI;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HappyShotUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/HappyShotUI;->showReviewImage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/HappyShotUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HappyShotUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HappyShotUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HappyShotUI;)Lcom/android/camera/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$404(Lcom/android/camera/component/HappyShotUI;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/HappyShotUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/HappyShotUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/HappyShotUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideThumbnailBar()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/component/HappyShotUI;->showReviewImage(Z)V

    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onHappyShotCompleted()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/HappyShotUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/HappyShotUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HappyShotUI;->showProcessingDialog(Z)V

    goto :goto_0
.end method

.method private onPhotoSaved()V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/component/HappyShotUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/HappyShotUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/HappyShotUI;->showProcessingDialog(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    goto :goto_0
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    const-string v1, "ActionScreen.Open"

    iget-object v2, p0, Lcom/android/camera/component/HappyShotUI;->m_ShowEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ActionScreen.Closing"

    iget-object v2, p0, Lcom/android/camera/component/HappyShotUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/HappyShotUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/HappyShotUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ThumbnailButton.Clicked"

    iget-object v2, p0, Lcom/android/camera/component/HappyShotUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private showReviewImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enterHappyShotMode()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter happy shot mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter Happy shot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    iput-boolean v2, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotController:Lcom/android/camera/component/HappyShotController;

    iget-wide v4, p0, Lcom/android/camera/component/HappyShotUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HappyShotUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void
.end method

.method public exitHappyShotMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit happy shot mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    iget-object v0, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotController:Lcom/android/camera/component/HappyShotController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HappyShotUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HappyShotUI;->onHappyShotCompleted()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/component/HappyShotUI;->m_CapturingInstanceID:J

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/HappyShotUI;->onPhotoSaved()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/component/HappyShotUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    const v3, 0x7f030017

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotController:Lcom/android/camera/component/HappyShotController;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "Happy Shot Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HappyShotController;

    iput-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotController:Lcom/android/camera/component/HappyShotController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotController:Lcom/android/camera/component/HappyShotController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/HappyShotController;->link(Lcom/android/camera/component/HappyShotUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_Inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_Inflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/HappyShotUI;->m_HappyShotReviewImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/camera/component/HappyShotUI;->registerListeners()V

    return-void

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isHappyShotModeEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotUI;->m_IsModeEntered:Z

    return v0
.end method
