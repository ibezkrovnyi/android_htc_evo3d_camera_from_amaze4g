.class Lcom/android/camera/component/BurstController$6;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$previewSize:Landroid/hardware/Camera$Size;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Landroid/hardware/Camera$Size;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$6;->val$previewSize:Landroid/hardware/Camera$Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1000(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Burst Mode - Postview Call-back, raw-data size = "

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

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->val$previewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$previewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    sget-object v2, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/ImageUtility;->createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;

    move-result-object v7

    const/16 v0, 0x5a

    invoke-static {v7, v0}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$300(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1204(Lcom/android/camera/component/BurstController;)I

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1300(Lcom/android/camera/component/BurstController;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$300(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0, v4}, Lcom/android/camera/component/BurstController;->access$1202(Lcom/android/camera/component/BurstController;I)I

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while creating thumbnail["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v2}, Lcom/android/camera/component/BurstController;->access$1200(Lcom/android/camera/component/BurstController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_1
.end method
