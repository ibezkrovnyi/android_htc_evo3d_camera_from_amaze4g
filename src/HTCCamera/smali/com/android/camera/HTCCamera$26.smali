.class Lcom/android/camera/HTCCamera$26;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;


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

.field final synthetic val$threshold:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    iput p2, p0, Lcom/android/camera/HTCCamera$26;->val$threshold:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture(Landroid/view/MotionEvent;II)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    :goto_0
    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$13800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->getHandleArea()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge p2, v5, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge p3, v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$13800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleSlideOpened()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    move v5, v8

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5, p2}, Lcom/android/camera/HTCCamera;->access$14002(Lcom/android/camera/HTCCamera;I)I

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5, p3}, Lcom/android/camera/HTCCamera;->access$14102(Lcom/android/camera/HTCCamera;I)I

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14000(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v2, v5, p2

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14100(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v3, v5, p3

    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v5, p0, Lcom/android/camera/HTCCamera$26;->val$threshold:I

    int-to-double v5, v5

    cmpl-double v5, v0, v5

    if-lez v5, :cond_3

    move v5, v7

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$13800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleOpened()V

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14000(Lcom/android/camera/HTCCamera;)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14100(Lcom/android/camera/HTCCamera;)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14000(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v2, v5, p2

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$14100(Lcom/android/camera/HTCCamera;)I

    move-result v5

    sub-int v3, v5, p3

    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v5, p0, Lcom/android/camera/HTCCamera$26;->val$threshold:I

    int-to-double v5, v5

    cmpg-double v5, v0, v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/HTCCamera$26;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
