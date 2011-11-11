.class Lcom/android/camera/component/AsyncCameraThreadComponent$1;
.super Lcom/android/camera/WorkerThread;
.source "AsyncCameraThreadComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AsyncCameraThreadComponent;Ljava/lang/String;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    iput-object p3, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {p0, p2}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v4, "Message (Async) : "

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    invoke-static {v1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->access$000(Lcom/android/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message (Async) : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/android/camera/component/AsyncCameraThreadComponent;

    invoke-static {v1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->access$100(Lcom/android/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message (Async) : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onEnter()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/component/AsyncCameraThreadComponent$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/AsyncCameraThreadComponent$1$1;-><init>(Lcom/android/camera/component/AsyncCameraThreadComponent$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v2, "Cannot notify component because there is no handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
