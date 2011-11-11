.class final Lcom/android/camera/CameraThread$ErrorCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v1, "CameraThread"

    const-string v0, "CameraThread"

    const-string v0, "got ErrorCallback !!!"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "error = Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "CameraThread"

    const-string v0, "got ErrorCallback - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "got ErrorCallback, Camera app finished"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x3d0

    if-ne p1, v0, :cond_2

    const-string v0, "CameraThread"

    const-string v0, "error = Camera.CAMERA_STEREO_PROHIBIT"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0, v2}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    iget-object v0, p0, Lcom/android/camera/CameraThread$ErrorCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "PowerWarning.Received"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string v0, "CameraThread"

    const-string v0, "error = Camera.CAMERA_ERROR_UNKNOWN"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "CameraThread"

    const-string v0, "unknown error"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
