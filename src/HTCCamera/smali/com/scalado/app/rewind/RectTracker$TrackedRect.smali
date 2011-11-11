.class Lcom/scalado/app/rewind/RectTracker$TrackedRect;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedRect"
.end annotation


# instance fields
.field private mBlink:I

.field private mEnlargedRect:Landroid/graphics/Rect;

.field private mEyes:[Landroid/graphics/Rect;

.field private mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

.field private mHasSmileBlink:Z

.field private mId:I

.field private mImage:I

.field private mLockedWith:Z

.field private mNeighbours:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mOrgEnlargedRect:Landroid/graphics/Rect;

.field private mRank:I

.field private mRect:Landroid/graphics/Rect;

.field private mRelDeltaNext:Landroid/graphics/PointF;

.field private mRelDeltaPrev:Landroid/graphics/PointF;

.field private mScore:F

.field private mSessionRect:Landroid/graphics/Rect;

.field private mSmile:I

.field private mSupersededBlink:I

.field private mSupersededHasRect:Z

.field private mSupersededHasSmileBlink:Z

.field private mSupersededIsDontCare:Z

.field private mSupersededSmile:I

.field private mUsed:Z

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededIsDontCare:Z

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    if-eqz p4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    :goto_0
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$13(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$14(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$17(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return v0
.end method

.method static synthetic access$21(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$22(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    return v0
.end method

.method static synthetic access$24(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    return v0
.end method

.method static synthetic access$25(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    return v0
.end method

.method static synthetic access$26(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return-void
.end method

.method static synthetic access$27(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$28(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-object v0
.end method

.method static synthetic access$29(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I

    move-result v0

    return v0
.end method

.method static synthetic access$30(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$31(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$32(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    return-void
.end method

.method static synthetic access$33(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    return-void
.end method

.method static synthetic access$34(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    return-void
.end method

.method static synthetic access$35(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    return-void
.end method

.method static synthetic access$36(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    return-void
.end method

.method static synthetic access$37(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F

    move-result v0

    return v0
.end method

.method static synthetic access$38(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return-void
.end method

.method static synthetic access$39(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$40(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return v0
.end method

.method static synthetic access$8(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return v0
.end method

.method private addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blink()I
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    goto :goto_0
.end method

.method private computeScore()F
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-ne v1, v5, :cond_1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-nez v1, :cond_2

    const/high16 v1, -0x4000

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$6()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_4
    const/high16 v0, -0x3f80

    goto :goto_1
.end method

.method private hasRect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    goto :goto_0
.end method

.method private hasSmileBlink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    goto :goto_0
.end method

.method private setSmileBlink(II)V
    .locals 1

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    return-void
.end method

.method private smile()I
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    goto :goto_0
.end method

.method private translationRelativeToBg(Landroid/graphics/PointF;)Z
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    move v7, v11

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v5, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$1(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v4, v7

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker;->access$0(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    add-float/2addr v6, v10

    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_2

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$1(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$2(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    add-float/2addr v6, v10

    :cond_2
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    sub-float v7, v0, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v5, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->x:F

    sub-float v7, v2, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v4, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->y:F

    move v7, v9

    goto/16 :goto_0

    :cond_3
    move v7, v11

    goto/16 :goto_0
.end method
