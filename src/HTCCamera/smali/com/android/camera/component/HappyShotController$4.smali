.class Lcom/android/camera/component/HappyShotController$4;
.super Ljava/lang/Object;
.source "HappyShotController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HappyShotController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
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

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController$4;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$4;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1400(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Happy shot Mode - Shutter Call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
