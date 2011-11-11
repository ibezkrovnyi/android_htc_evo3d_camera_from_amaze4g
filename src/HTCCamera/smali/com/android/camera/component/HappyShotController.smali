.class public final Lcom/android/camera/component/HappyShotController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HappyShotController.java"

# interfaces
.implements Lcom/android/camera/ICaptureHandler;


# static fields
.field public static final MSG_AUTO_SESSION_RECYCLE:I = 0x3

.field public static final MSG_ENTER_HAPPY_SHOT:I = 0x1

.field public static final MSG_EXIT_HAPPY_SHOT:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Happy Shot Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/DCFInfo;


# instance fields
.field autoSession:Lcom/scalado/app/rewind/AutoSession;

.field private final m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private m_CaptureCount:I

.field private m_CurrentCaptureIndex:I

.field private final m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_HappyShotUI:Lcom/android/camera/component/HappyShotUI;

.field private m_InstanceID:J

.field private m_IsBurstModeEntered:Z

.field private m_IsCaptureHandlerUpdated:Z

.field private final m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

.field private final m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TakePictureEndedEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/HappyShotController;->m_BurstDCFInfo:Lcom/android/camera/DCFInfo;

    sget-object v0, Lcom/android/camera/component/HappyShotController;->m_BurstDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->registerDCFInfo(Lcom/android/camera/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Happy Shot Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/HappyShotController;->m_CaptureCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_ExifTags:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/component/HappyShotController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotController$1;-><init>(Lcom/android/camera/component/HappyShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

    new-instance v0, Lcom/android/camera/component/HappyShotController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotController$2;-><init>(Lcom/android/camera/component/HappyShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_TakePictureEndedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/HappyShotController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotController$3;-><init>(Lcom/android/camera/component/HappyShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HappyShotController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HappyShotController;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/HappyShotController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/component/HappyShotController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    return p1
.end method

.method static synthetic access$1704(Lcom/android/camera/component/HappyShotController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/HappyShotController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/HappyShotController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/HappyShotController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotController;->m_IsCaptureHandlerUpdated:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HappyShotController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/HappyShotController;->m_IsBurstModeEntered:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/component/HappyShotUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_HappyShotUI:Lcom/android/camera/component/HappyShotUI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/CameraThread$StorePictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isCameraTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEnterHappyShotMode(J)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/HappyShotController;->m_IsBurstModeEntered:Z

    iput-wide p1, p0, Lcom/android/camera/component/HappyShotController;->m_InstanceID:J

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method private onExitHappyShotMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "picture-count"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/HappyShotController;->m_IsBurstModeEntered:Z

    iget-object v2, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/HappyShotController;->onEnterHappyShotMode(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HappyShotController;->onExitHappyShotMode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    return-void
.end method

.method link(Lcom/android/camera/component/HappyShotUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController;->m_HappyShotUI:Lcom/android/camera/component/HappyShotUI;

    return-void
.end method

.method public takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/CameraController;->setRotation(I)V

    const-string v0, "capture-mode"

    const-string v1, "burst"

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "picture-count"

    iget v1, p0, Lcom/android/camera/component/HappyShotController;->m_CaptureCount:I

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iput v3, p0, Lcom/android/camera/component/HappyShotController;->m_CurrentCaptureIndex:I

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/component/HappyShotController;->m_HappyShotUI:Lcom/android/camera/component/HappyShotUI;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/camera/component/HappyShotController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HappyShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-nez v0, :cond_0

    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    iget v1, p0, Lcom/android/camera/component/HappyShotController;->m_CaptureCount:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/HappyShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    iget v3, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance v0, Lcom/android/camera/component/HappyShotController$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/HappyShotController$4;-><init>(Lcom/android/camera/component/HappyShotController;)V

    new-instance v1, Lcom/android/camera/component/HappyShotController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/HappyShotController$5;-><init>(Lcom/android/camera/component/HappyShotController;Lcom/android/camera/CameraThread;)V

    new-instance v2, Lcom/android/camera/component/HappyShotController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HappyShotController$6;-><init>(Lcom/android/camera/component/HappyShotController;)V

    new-instance v3, Lcom/android/camera/component/HappyShotController$7;

    invoke-direct {v3, p0, p1, v6}, Lcom/android/camera/component/HappyShotController$7;-><init>(Lcom/android/camera/component/HappyShotController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    goto :goto_0
.end method
