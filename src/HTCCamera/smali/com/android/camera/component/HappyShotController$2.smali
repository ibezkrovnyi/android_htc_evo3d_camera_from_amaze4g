.class Lcom/android/camera/component/HappyShotController$2;
.super Ljava/lang/Object;
.source "HappyShotController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/HappyShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HappyShotController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HappyShotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$200(Lcom/android/camera/component/HappyShotController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$300(Lcom/android/camera/component/HappyShotController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-virtual {v0}, Lcom/android/camera/component/HappyShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$2;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-virtual {v0}, Lcom/android/camera/component/HappyShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    goto :goto_0
.end method
