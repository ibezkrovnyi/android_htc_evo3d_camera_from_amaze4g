.class Lcom/android/camera/GpuEffectController$CustomPropSet;
.super Ljava/lang/Object;
.source "GpuEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomPropSet"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field original_value:I

.field final synthetic this$0:Lcom/android/camera/GpuEffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/GpuEffectController;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    iput-object p1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    const-string v0, "contrast"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$900(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_contrast"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    :cond_0
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$900(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_saturation"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    :cond_1
    const-string v0, "exposure-compensation"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$900(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_brightness"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    :cond_2
    const-string v0, "sharpness"

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$900(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_shaprness"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    :cond_3
    const-string v0, "GpuEffectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add Custom properties key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,current Value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/GpuEffectController$CustomPropSet;->original_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
