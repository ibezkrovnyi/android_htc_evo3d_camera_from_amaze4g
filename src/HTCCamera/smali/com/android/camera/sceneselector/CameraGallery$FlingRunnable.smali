.class public Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "CameraGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/CameraGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mDeviceFPS:I

.field private mFrameCount:I

.field private mIsByFrame:Z

.field private mLastFlingX:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field private mTotalFrame:I

.field private mTouchMove:Z

.field final synthetic this$0:Lcom/android/camera/sceneselector/CameraGallery;


# direct methods
.method public constructor <init>(Lcom/android/camera/sceneselector/CameraGallery;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    iput v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTotalFrame:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mDeviceFPS:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mIsByFrame:Z

    iput-boolean v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTouchMove:Z

    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/android/camera/sceneselector/CameraGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private computeTranslateByFrame(FFFFF)F
    .locals 4

    div-float/2addr p2, p5

    mul-float v1, p2, p2

    mul-float v0, v1, p2

    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    return v2
.end method

.method private endFling(Z)V
    .locals 2

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTotalFrame:I

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollIntoSlots()V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/CameraGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    iget v0, v0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-nez v0, :cond_0

    invoke-direct {p0, v11}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->endFling(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->access$402(Lcom/android/camera/sceneselector/CameraGallery;Z)Z

    iget-object v10, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v10}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v8

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mIsByFrame:Z

    if-ne v11, v0, :cond_5

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v4}, Lcom/htc/widget/HtcScroller;->getStartX()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTotalFrame:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->computeTranslateByFrame(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    iget v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    sub-int v7, v0, v1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    if-le v0, v1, :cond_3

    if-nez v7, :cond_2

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    iget v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    sub-int v6, v0, v1

    if-lez v6, :cond_6

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    iget v1, v1, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    iput v1, v0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v1}, Lcom/android/camera/sceneselector/CameraGallery;->access$500(Lcom/android/camera/sceneselector/CameraGallery;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v1}, Lcom/android/camera/sceneselector/CameraGallery;->access$600(Lcom/android/camera/sceneselector/CameraGallery;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v11

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, v6}, Lcom/android/camera/sceneselector/CameraGallery;->trackMotionScroll(I)V

    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v0}, Lcom/android/camera/sceneselector/CameraGallery;->access$400(Lcom/android/camera/sceneselector/CameraGallery;)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v1}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/CameraGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    if-gez v7, :cond_1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    sub-int/2addr v0, v11

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_4
    if-lez v7, :cond_1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mCurrentX:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v0

    sub-int v9, v0, v11

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    iget v1, v1, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/CameraGallery;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v1}, Lcom/android/camera/sceneselector/CameraGallery;->access$700(Lcom/android/camera/sceneselector/CameraGallery;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v1}, Lcom/android/camera/sceneselector/CameraGallery;->access$800(Lcom/android/camera/sceneselector/CameraGallery;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v11

    neg-int v0, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    :cond_7
    invoke-direct {p0, v11}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(IZI)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->startCommon()V

    iput v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mIsByFrame:Z

    iput v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v3, p1

    move v2, v1

    move v4, v1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    iput-boolean p2, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTouchMove:Z

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/CameraGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 11

    const v6, 0x7fffffff

    const/4 v4, -0x1

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->startCommon()V

    if-gez p1, :cond_4

    const/16 v0, 0x4e20

    move v1, v0

    :goto_1
    iput v1, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mLastFlingX:I

    int-to-float v0, p1

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v3}, Lcom/android/camera/sceneselector/CameraGallery;->access$100(Lcom/android/camera/sceneselector/CameraGallery;)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v3}, Lcom/android/camera/sceneselector/CameraGallery;->access$200(Lcom/android/camera/sceneselector/CameraGallery;)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v0}, Lcom/android/camera/sceneselector/CameraGallery;->access$200(Lcom/android/camera/sceneselector/CameraGallery;)F

    move-result v0

    if-gez p1, :cond_5

    move v3, v4

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int p1, v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v3}, Lcom/android/camera/sceneselector/CameraGallery;->access$300(Lcom/android/camera/sceneselector/CameraGallery;)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-static {v0}, Lcom/android/camera/sceneselector/CameraGallery;->access$300(Lcom/android/camera/sceneselector/CameraGallery;)F

    move-result v0

    if-gez p1, :cond_6

    move v3, v4

    :goto_3
    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int p1, v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    iput-boolean v10, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mIsByFrame:Z

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v9

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mIsByFrame:Z

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcScroller;->extendDuration(I)V

    iput v2, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mFrameCount:I

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mDeviceFPS:I

    mul-int/2addr v0, v9

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mTotalFrame:I

    :cond_3
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/CameraGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v3, v10

    goto :goto_2

    :cond_6
    move v3, v10

    goto :goto_3
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->this$0:Lcom/android/camera/sceneselector/CameraGallery;

    invoke-virtual {v0, p0}, Lcom/android/camera/sceneselector/CameraGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
