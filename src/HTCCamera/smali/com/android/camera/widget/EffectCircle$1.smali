.class Lcom/android/camera/widget/EffectCircle$1;
.super Ljava/lang/Object;
.source "EffectCircle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/EffectCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/EffectCircle;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/EffectCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectCircle;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$000(Lcom/android/camera/widget/EffectCircle;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5, v9}, Lcom/android/camera/widget/EffectCircle;->access$102(Lcom/android/camera/widget/EffectCircle;I)I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v3, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v4, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;->onCircleChange(Z)V

    :cond_3
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mY:I

    :cond_4
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectCircle;->setPaintON()V

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectCircle;->invalidate()V

    :cond_5
    const/4 v5, 0x2

    if-ne v0, v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$000(Lcom/android/camera/widget/EffectCircle;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION_MOVE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5, v9}, Lcom/android/camera/widget/EffectCircle;->access$102(Lcom/android/camera/widget/EffectCircle;I)I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DISTORTION:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_11

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v3, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v4, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;->onCircleChange(Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mY:I

    :cond_9
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-virtual {v5}, Lcom/android/camera/widget/EffectCircle;->invalidate()V

    :cond_a
    if-eq v0, v10, :cond_b

    const/4 v5, 0x3

    if-ne v0, v5, :cond_d

    :cond_b
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$000(Lcom/android/camera/widget/EffectCircle;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION_UP"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;->onCircleChange(Z)V

    :cond_c
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$300(Lcom/android/camera/widget/EffectCircle;)Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    invoke-interface {v5, v6, v7}, Lcom/android/camera/widget/EffectCircle$EffectCircleChangeListener;->onCircleFingerUp(II)V

    :cond_d
    move v5, v9

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->VIGNETTE:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_f

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->mY:I

    goto/16 :goto_1

    :cond_f
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_2

    :cond_10
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    invoke-static {v5, v6, v7, v3, v4}, Lcom/android/camera/widget/EffectCircle;->access$200(Lcom/android/camera/widget/EffectCircle;IIII)D

    move-result-wide v1

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$000(Lcom/android/camera/widget/EffectCircle;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action_Down dDist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,dRadius="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-wide v7, v7, Lcom/android/camera/widget/EffectCircle;->dRadius:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v3, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v4, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->DEPTH:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-eq v5, v6, :cond_12

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v5, v5, Lcom/android/camera/widget/EffectCircle;->mCurrEffect:Lcom/android/camera/GpuEffectController$GpuEffect;

    sget-object v6, Lcom/android/camera/GpuEffectController$GpuEffect;->TILFSHIFT:Lcom/android/camera/GpuEffectController$GpuEffect;

    if-ne v5, v6, :cond_7

    :cond_12
    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    invoke-static {v5, v6, v7, v3, v4}, Lcom/android/camera/widget/EffectCircle;->access$200(Lcom/android/camera/widget/EffectCircle;IIII)D

    move-result-wide v1

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    invoke-static {v5}, Lcom/android/camera/widget/EffectCircle;->access$100(Lcom/android/camera/widget/EffectCircle;)I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v3, v5, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iput v4, v5, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterX:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nDistX:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherX:I

    iget-object v5, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget-object v6, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v6, v6, Lcom/android/camera/widget/EffectCircle;->nCenterY:I

    iget-object v7, p0, Lcom/android/camera/widget/EffectCircle$1;->this$0:Lcom/android/camera/widget/EffectCircle;

    iget v7, v7, Lcom/android/camera/widget/EffectCircle;->nDistY:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/camera/widget/EffectCircle;->nOtherY:I

    goto/16 :goto_2
.end method
