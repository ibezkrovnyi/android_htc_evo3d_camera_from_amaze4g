.class Lcom/android/camera/GpuEffectController$1;
.super Ljava/lang/Object;
.source "GpuEffectController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$000(Lcom/android/camera/GpuEffectController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$100(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/EffectControlBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$100(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/EffectControlBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/EffectControlBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$200(Lcom/android/camera/GpuEffectController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v0}, Lcom/android/camera/GpuEffectController;->access$100(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/EffectControlBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/GpuEffectController$1;->this$0:Lcom/android/camera/GpuEffectController;

    invoke-static {v1}, Lcom/android/camera/GpuEffectController;->access$100(Lcom/android/camera/GpuEffectController;)Lcom/android/camera/widget/EffectControlBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/EffectControlBar;->getProgress()I

    move-result v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/EffectControlBar;->setProgress(I)V

    :cond_1
    return-void
.end method
