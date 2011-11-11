.class Lcom/android/camera/widget/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/android/camera/widget/Panel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$2000(Lcom/android/camera/widget/Panel;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->initChange()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/high16 v8, 0x41f0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;

    move-result-object v2

    sget-object v3, Lcom/android/camera/widget/Panel$State;->TRACKING:Lcom/android/camera/widget/Panel$State;

    if-eq v2, v3, :cond_0

    move v2, v7

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v3, Lcom/android/camera/widget/Panel$State;->FLYING:Lcom/android/camera/widget/Panel$State;

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    if-ne v3, v6, :cond_4

    move v3, p4

    :goto_1
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$1002(Lcom/android/camera/widget/Panel;F)F

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;

    move-result-object v2

    sget-object v3, Lcom/android/camera/widget/Panel$State;->FLYING:Lcom/android/camera/widget/Panel$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_1
    move v3, v6

    :goto_2
    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$1000(Lcom/android/camera/widget/Panel;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    move v4, v6

    :goto_3
    xor-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$902(Lcom/android/camera/widget/Panel;Z)Z

    :cond_2
    cmpl-float v2, p3, v5

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    const/high16 v3, -0x3db8

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v3

    add-float/2addr v3, v8

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    :cond_3
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    invoke-direct {v1, v2, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2100(Lcom/android/camera/widget/Panel;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1600(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    move v2, v6

    goto/16 :goto_0

    :cond_4
    move v3, p3

    goto :goto_1

    :cond_5
    move v3, v7

    goto :goto_2

    :cond_6
    move v4, v7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v3

    sub-float/2addr v3, v8

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    :cond_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2200(Lcom/android/camera/widget/Panel;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1600(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2, v0}, Lcom/android/camera/widget/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2000(Lcom/android/camera/widget/Panel;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v3, Lcom/android/camera/widget/Panel$State;->TRACKING:Lcom/android/camera/widget/Panel$State;

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$300(Lcom/android/camera/widget/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$600(Lcom/android/camera/widget/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v2

    if-ne v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2, v5}, Lcom/android/camera/widget/Panel;->access$1802(Lcom/android/camera/widget/Panel;Z)Z

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1100(Lcom/android/camera/widget/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2, v0}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2, v1}, Lcom/android/camera/widget/Panel;->access$1102(Lcom/android/camera/widget/Panel;F)F

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2}, Lcom/android/camera/widget/Panel;->invalidate()V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$2102(Lcom/android/camera/widget/Panel;I)I

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v5}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$2202(Lcom/android/camera/widget/Panel;I)I

    return v6

    :cond_4
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$600(Lcom/android/camera/widget/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v1

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v0

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-static {v2, v6}, Lcom/android/camera/widget/Panel;->access$1802(Lcom/android/camera/widget/Panel;Z)Z

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    return-void
.end method
