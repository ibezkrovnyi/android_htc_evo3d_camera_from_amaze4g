.class Lcom/android/camera/component/HappyShotController$6;
.super Ljava/lang/Object;
.source "HappyShotController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1600(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Happy shot Mode - Postview Call-back, raw-data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    array-length v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1704(Lcom/android/camera/component/HappyShotController;)I

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1700(Lcom/android/camera/component/HappyShotController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v1}, Lcom/android/camera/component/HappyShotController;->access$1800(Lcom/android/camera/component/HappyShotController;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    iget-object v1, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v1}, Lcom/android/camera/component/HappyShotController;->access$600(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/component/HappyShotUI;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/HappyShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$6;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0, v3}, Lcom/android/camera/component/HappyShotController;->access$1702(Lcom/android/camera/component/HappyShotController;I)I

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method
