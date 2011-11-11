.class Lcom/android/camera/HTCCamera$11;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosing(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a0002

    const v3, 0x7f0200cf

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onOpening(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v1, p1}, Lcom/android/camera/HTCCamera;->access$13100(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SlidingMenu;)V

    invoke-virtual {p1}, Lcom/android/camera/widget/SlidingMenu;->getItemCount()I

    move-result v1

    sub-int v0, v1, v2

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/camera/widget/SlidingMenu;->getItem(I)Lcom/android/camera/widget/SlidingMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SlidingMenuItem;->highlight(Z)V

    goto :goto_1
.end method
