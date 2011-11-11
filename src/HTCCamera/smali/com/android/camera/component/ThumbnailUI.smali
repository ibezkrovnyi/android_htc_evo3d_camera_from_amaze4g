.class public Lcom/android/camera/component/ThumbnailUI;
.super Lcom/android/camera/component/UIComponent;
.source "ThumbnailUI.java"


# static fields
.field public static final MSG_THUMB_IMAGE_CREATED:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Thumbnail UI"


# instance fields
.field private final m_ActionScreenClosingEventHandler:Lcom/android/camera/IEventHandler;

.field private m_IsEnabled:Z

.field private m_IsRecording:Z

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbnailButton:Landroid/widget/ImageView;

.field private m_ThumbnailButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ThumbnailButtonGlow:Landroid/widget/ImageView;

.field private m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;

.field private m_ThumbnailImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Thumbnail UI"

    const v1, 0x7f080042

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsRecording:Z

    new-instance v0, Lcom/android/camera/component/ThumbnailUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailUI$1;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ActionScreenClosingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ThumbnailUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailUI$2;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ThumbnailUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailUI$3;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsRecording:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsRecording:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method private clearThumbnailImage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImagePath:Ljava/lang/String;

    return-void
.end method

.method private createThumbnailImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No thumbnail controller to create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImagePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/ThumbnailUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$5;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    const-string v2, "ActionScreen.Closing"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_ActionScreenClosingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "EffectPanel.Closed"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$6;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CaptureUI.Closed"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CaptureUI.Open"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$7;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "EffectPanel.Opening"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "MediaScanner.Finished"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$8;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.Pausing"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.PreviewStarted"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$9;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "RemovableStorage.Unmounted"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$10;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$10;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "Mode.Switched"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.Resuming"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_ResumingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.RotateChanged"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$11;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "TriggerRecord.Started"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$12;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "TriggerRecord.Stopped"

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$13;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$13;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method private showThumbnailButton(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    invoke-virtual {p0, v4}, Lcom/android/camera/component/ThumbnailUI;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v2, v1, v4

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    const-string v5, "Thumbnail Controller"

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v4

    check-cast v4, Lcom/android/camera/component/ThumbnailController;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    invoke-virtual {v4, p0}, Lcom/android/camera/component/ThumbnailController;->link(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f030048

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v1, v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x7f080185

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080186

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    :goto_2
    iget-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/camera/component/ThumbnailUI$4;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ThumbnailUI$4;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f080187

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    :goto_3
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->registerListeners()V

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V

    return-void

    :cond_1
    const v4, 0x7f030049

    move v3, v4

    goto :goto_1

    :cond_2
    const v4, 0x7f080188

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v4, 0x7f080189

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    iput-object v6, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonGlow:Landroid/widget/ImageView;

    goto :goto_3
.end method
