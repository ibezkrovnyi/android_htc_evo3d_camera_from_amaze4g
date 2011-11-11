.class public abstract Lcom/android/camera/sceneselector/CameraGallery;
.super Lcom/android/camera/sceneselector/AbsSpinner;
.source "CameraGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;,
        Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;,
        Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;,
        Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;,
        Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "CameraGallery"

.field protected static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field protected mBouncingLimit:I

.field private mContextMenuInfo:Lcom/android/camera/sceneselector/AdapterView$AdapterContextMenuInfo;

.field private mDetachOffScreenOffset:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field protected mDownEventX:F

.field protected mDownTouchPosition:I

.field protected mDownTouchView:Landroid/view/View;

.field private mFlingFactor:F

.field private mFlingMax:F

.field private mFlingMin:F

.field protected mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mInTouchMove:Z

.field private mIntoSlotDuration:I

.field protected mIsFirstScroll:Z

.field protected mLeftMost:I

.field protected mOnFinishedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;

.field protected mOnStartedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;

.field protected mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

.field private mReceivedInvokeKeyDown:Z

.field protected mRightMost:I

.field protected mSelectedChild:Landroid/view/View;

.field protected mShouldCallbackDuringFling:Z

.field protected mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field protected mSuppressSelectionChanged:Z

.field private mTouchRegion:Landroid/graphics/Rect;

.field private mUnselectedAlpha:F

.field private mWasScrollIntoByTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/sceneselector/CameraGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/sceneselector/CameraGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/sceneselector/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSpacing:I

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mAnimationDuration:I

    const/16 v5, 0x12c

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIntoSlotDuration:I

    iput-boolean v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mWasScrollIntoByTouch:Z

    iput v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    iput v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    const/high16 v5, -0x3100

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMin:F

    const/high16 v5, 0x4f00

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMax:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingFactor:F

    iput-boolean v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mInTouchMove:Z

    new-instance v5, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;-><init>(Lcom/android/camera/sceneselector/CameraGallery;)V

    iput-object v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    new-instance v5, Lcom/android/camera/sceneselector/CameraGallery$1;

    invoke-direct {v5, p0}, Lcom/android/camera/sceneselector/CameraGallery$1;-><init>(Lcom/android/camera/sceneselector/CameraGallery;)V

    iput-object v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackDuringFling:Z

    iput-boolean v7, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackOnUnselectedItemClick:Z

    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/CameraGallery;->setGravity(I)V

    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->setAnimationDuration(I)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/sceneselector/CameraGallery;->setSpacing(I)V

    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/sceneselector/CameraGallery;->setUnselectedAlpha(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGroupFlags:I

    iget v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGroupFlags:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/sceneselector/CameraGallery;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingFactor:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/sceneselector/CameraGallery;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMax:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/sceneselector/CameraGallery;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMin:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/sceneselector/CameraGallery;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/sceneselector/CameraGallery;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/sceneselector/CameraGallery;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/sceneselector/CameraGallery;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/sceneselector/CameraGallery;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/sceneselector/CameraGallery;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6

    if-eqz p2, :cond_0

    iget v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mMeasuredHeight:I

    move v3, v4

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v1, v4

    :goto_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getHeight()I

    move-result v4

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v6

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    iget v9, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    sub-int v3, v8, v9

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v7, v1}, Lcom/android/camera/sceneselector/CameraGallery;->detachViewsFromParent(II)V

    if-eqz p1, :cond_1

    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    add-int v4, v8, v9

    const/4 v8, 0x1

    sub-int v5, v6, v8

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    move v7, v5

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOnItemLongClickListener:Lcom/android/camera/sceneselector/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOnItemLongClickListener:Lcom/android/camera/sceneselector/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/sceneselector/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/android/camera/sceneselector/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/android/camera/sceneselector/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/sceneselector/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mContextMenuInfo:Lcom/android/camera/sceneselector/AdapterView$AdapterContextMenuInfo;

    invoke-super {p0, p0}, Lcom/android/camera/sceneselector/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->setPressed(Z)V

    return-void
.end method

.method protected static getCenterOfView(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Lcom/android/camera/sceneselector/AbsSpinner;->selectionChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnFinishedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnFinishedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;

    invoke-interface {v0}, Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;->onFinishedMovement()V

    :cond_1
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfGallery()I

    move-result v3

    invoke-static {v0}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    sub-int v1, v3, v4

    iput-boolean v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mWasScrollIntoByTouch:Z

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    iget v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mAnimationDuration:I

    invoke-virtual {v3, v1, v6, v4}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->startUsingDistance(IZI)V

    move v3, v7

    :goto_0
    return v3

    :cond_0
    iget v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int v2, p1, v3

    const-string v3, "CameraGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToChild()...child=null...setSelection...mNextPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/camera/sceneselector/CameraGallery;->setSelection(IZZ)V

    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery;->onFinishedMovement()V

    move v3, v7

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfGallery()I

    move-result v3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    :cond_2
    const v2, 0x7fffffff

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v4, v8, v9

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    move v6, v4

    :cond_3
    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/CameraGallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/CameraGallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->checkSelectionChanged()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_5

    move v2, v1

    move v6, v4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lcom/android/camera/sceneselector/CameraGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/camera/sceneselector/CameraGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-eqz p4, :cond_3

    move v2, p3

    add-int v3, v2, v7

    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    sub-int v2, p3, v7

    move v3, p3

    goto :goto_2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method protected dispatchUnpress()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/sceneselector/CameraGallery;->setPressed(Z)V

    return-void
.end method

.method protected fillToGalleryLeft()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSpacing:I

    iget v5, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    iget v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    sub-int v2, v5, v6

    invoke-virtual {p0, v7}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v0, v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-virtual {p0, v0, v5, v1, v7}, Lcom/android/camera/sceneselector/CameraGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    iput v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mRight:I

    iget v6, p0, Lcom/android/camera/sceneselector/AdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    sub-int v1, v5, v6

    iput-boolean v8, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSpacing:I

    iget v7, p0, Lcom/android/camera/sceneselector/AdapterView;->mRight:I

    iget v8, p0, Lcom/android/camera/sceneselector/AdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    add-int v2, v7, v8

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    sub-int v7, v4, v9

    invoke-virtual {p0, v7}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    iget v7, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v1, v7, v0, v9}, Lcom/android/camera/sceneselector/CameraGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v7, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    sub-int v1, v7, v9

    iput v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    iput-boolean v9, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected fireOnSelected()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOnItemSelectedListener:Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOnItemSelectedListener:Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mWasScrollIntoByTouch:Z

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/sceneselector/AdapterView;Landroid/view/View;IJZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mOnItemSelectedListener:Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/android/camera/sceneselector/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/android/camera/sceneselector/AdapterView;)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/camera/sceneselector/CameraGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfGallery()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    if-gez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    sub-int v1, p1, v1

    if-ne p2, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_2
    move v1, p2

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mContextMenuInfo:Lcom/android/camera/sceneselector/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method protected getLimitedMotionScrollAmount(ZI)I
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v3, v5

    :goto_0
    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v5, p2

    :goto_1
    return v5

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfGallery()I

    move-result v4

    if-eqz p1, :cond_2

    if-gt v2, v4, :cond_3

    move v5, v7

    goto :goto_1

    :cond_2
    if-lt v2, v4, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    sub-int v0, v4, v2

    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public isInTouchMove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mInTouchMove:Z

    return v0
.end method

.method layout(IZZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mRight:I

    iget v5, p0, Lcom/android/camera/sceneselector/AdapterView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    iget-boolean v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->handleDataChanged()V

    :cond_0
    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->resetList()V

    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/android/camera/sceneselector/CameraGallery;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->detachAllViewsFromParent()V

    iput v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mRightMost:I

    iput v6, p0, Lcom/android/camera/sceneselector/CameraGallery;->mLeftMost:I

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iput v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/camera/sceneselector/CameraGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->fillToGalleryRight()V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->fillToGalleryLeft()V

    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->invalidate()V

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->checkSelectionChanged()V

    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/sceneselector/AdapterView;->mDataChanged:Z

    iput-boolean v6, p0, Lcom/android/camera/sceneselector/AdapterView;->mNeedSync:Z

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Lcom/android/camera/sceneselector/CameraGallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method protected makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5

    iget-boolean v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mRightMost:I

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mLeftMost:I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/camera/sceneselector/CameraGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/camera/sceneselector/CameraGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    goto :goto_0
.end method

.method public moveNext()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollToChild(I)Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "CameraGallery"

    const-string v1, "move Next failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePrevious()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollToChild(I)Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "CameraGallery"

    const-string v1, "move Previous failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)Z
    .locals 3

    const-string v0, "CameraGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTo(nextPos)...mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nextPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollToChild(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownEventX:F

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->stop(Z)V

    iput-boolean v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mInTouchMove:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;->OnTouchItemEvent(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIsFirstScroll:Z

    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->startUsingVelocity(I)V

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnStartedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnStartedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;

    invoke-interface {v0}, Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;->onStartedMovement()V

    :cond_1
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/sceneselector/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/sceneselector/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    :sswitch_1
    iput-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/sceneselector/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    iget-boolean v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchPress(Landroid/view/View;)V

    new-instance v1, Lcom/android/camera/sceneselector/CameraGallery$2;

    invoke-direct {v1, p0}, Lcom/android/camera/sceneselector/CameraGallery$2;-><init>(Lcom/android/camera/sceneselector/CameraGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/sceneselector/CameraGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/camera/sceneselector/CameraGallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mReceivedInvokeKeyDown:Z

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/camera/sceneselector/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/sceneselector/AdapterView;->mInLayout:Z

    invoke-virtual {p0, v1, v1, v1}, Lcom/android/camera/sceneselector/CameraGallery;->layout(IZZ)V

    iput-boolean v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/CameraGallery;->performHapticFeedback(I)Z

    iget v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/CameraGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/sceneselector/CameraGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->trackMotionScroll(I)V

    iput-boolean v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIsFirstScroll:Z

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollToChild(I)Z

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/sceneselector/CameraGallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/android/camera/sceneselector/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onUp(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->onCancel(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method onUp(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDownTouchPosition:I

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;->OnTouchItemEvent(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    iget-object v0, v0, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->scrollIntoSlots()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchUnpress()V

    return-void
.end method

.method protected scrollIntoSlots()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getCenterOfGallery()I

    move-result v2

    sub-int v0, v2, v1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    iget v4, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIntoSlotDuration:I

    invoke-virtual {v3, v0, v5, v4}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->startUsingDistance(IZI)V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/sceneselector/CameraGallery;->mInTouchMove:Z

    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/sceneselector/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mAnimationDuration:I

    return-void
.end method

.method public setBouncingLimit(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setDetachOffScreenOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mDetachOffScreenOffset:I

    return-void
.end method

.method public setFlingFactor(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingFactor:F

    return-void
.end method

.method public setFlingMinMax(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMin:F

    iput p2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingMax:F

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mGravity:I

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIntoSlotDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mIntoSlotDuration:I

    return-void
.end method

.method public setOnFinishedMovementListener(Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnFinishedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnFinishedMovementListener;

    return-void
.end method

.method public setOnStartedMovementListener(Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnStartedMovementListener:Lcom/android/camera/sceneselector/CameraGallery$OnStartedMovementListener;

    return-void
.end method

.method public setOnTouchItemEventListener(Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mOnTouchItemEventListener:Lcom/android/camera/sceneselector/CameraGallery$OnTouchItemEventListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/sceneselector/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSpacing:I

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/sceneselector/CameraGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 v2, 0x1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/sceneselector/CameraGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    iget v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mBouncingLimit:I

    if-nez v2, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/camera/sceneselector/CameraGallery;->mFlingRunnable:Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;

    invoke-static {v2, v3}, Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;->access$000(Lcom/android/camera/sceneselector/CameraGallery$FlingRunnable;Z)V

    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery;->onFinishedMovement()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/sceneselector/CameraGallery;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/sceneselector/CameraGallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->fillToGalleryRight()V

    :goto_2
    iget-object v2, p0, Lcom/android/camera/sceneselector/AbsSpinner;->mRecycler:Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->clear()V

    invoke-direct {p0}, Lcom/android/camera/sceneselector/CameraGallery;->setSelectionToCenterChild()V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

.method protected updateSelectedItemMetadata()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/sceneselector/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/android/camera/sceneselector/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/sceneselector/CameraGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/sceneselector/CameraGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/sceneselector/CameraGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method
