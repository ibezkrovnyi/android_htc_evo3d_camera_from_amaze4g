.class public Lcom/android/camera/widget/EffectControlBar;
.super Ljava/lang/Object;
.source "EffectControlBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;
    }
.end annotation


# instance fields
.field private EffectBarOffset:I

.field public isOnTouch:Z

.field private mAdd:Lcom/android/camera/rotate/RotateImageView;

.field private mCircle:Lcom/android/camera/widget/EffectCircle;

.field private mDec:Lcom/android/camera/rotate/RotateImageView;

.field private mListener:Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;

.field private mMainView:Landroid/view/View;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Lcom/android/camera/widget/EffectCircle;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/camera/widget/EffectControlBar;->isOnTouch:Z

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mUiHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mCircle:Lcom/android/camera/widget/EffectCircle;

    iput v2, p0, Lcom/android/camera/widget/EffectControlBar;->EffectBarOffset:I

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mAdd:Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mDec:Lcom/android/camera/rotate/RotateImageView;

    iput-object p1, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/widget/EffectControlBar;->mUiHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/camera/widget/EffectControlBar;->mCircle:Lcom/android/camera/widget/EffectCircle;

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/android/camera/widget/EffectControlBar;->EffectBarOffset:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/widget/EffectControlBar;->init(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f080085

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f080087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mAdd:Lcom/android/camera/rotate/RotateImageView;

    const v1, 0x7f080086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mDec:Lcom/android/camera/rotate/RotateImageView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xffffff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/EffectControlBar;->EffectBarOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mListener:Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mListener:Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;

    invoke-interface {v0, p2}, Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;->onControlBarChange(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/widget/EffectControlBar;->isOnTouch:Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/widget/EffectControlBar;->isOnTouch:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/widget/EffectControlBar;->isOnTouch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2
.end method

.method public setControlBarChangeListener(Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/EffectControlBar;->mListener:Lcom/android/camera/widget/EffectControlBar$ControlBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/EffectControlBar;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
