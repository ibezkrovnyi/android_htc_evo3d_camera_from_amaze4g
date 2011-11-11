.class Lcom/android/camera/GpuEffectController$2;
.super Ljava/lang/Object;
.source "GpuEffectController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GpuEffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/GpuEffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "GpuEffectController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectAdapter.OnItemClick view.getTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$300(Lcom/android/camera/GpuEffectController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$400(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/Panel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$400(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    iget-object v2, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v2}, Lcom/android/camera/GpuEffectController;->access$500(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$2;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$600(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/GpuEffectController$EffectAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GpuEffectController$EffectAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
