.class Lcom/android/camera/component/ThumbnailUI$4;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, 0x4

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$300(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v7

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v3, v7

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v4}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    const v5, 0x7f0a0011

    const v6, 0x7f020078

    invoke-static {v4, v5, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    new-instance v0, Lcom/android/camera/ThumbnailButtonClickedEvent;

    const-string v3, "ThumbnailButton.Clicked"

    iget-object v4, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v4}, Lcom/android/camera/component/ThumbnailUI;->access$600(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/camera/ThumbnailButtonClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailButtonClickedEvent;->isHandled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$4;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->startAlbum()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
