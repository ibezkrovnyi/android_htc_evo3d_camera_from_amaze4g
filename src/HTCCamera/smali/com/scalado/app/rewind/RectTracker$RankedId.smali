.class Lcom/scalado/app/rewind/RectTracker$RankedId;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOOD_ENOUGH_SMILE_DIFF_MAX:I = 0x5


# instance fields
.field mImageIndex:I

.field mKnownRect:Z

.field mScore:F

.field mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$RankedId;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$RankedId;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method private compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 7

    const/16 v3, 0x5a

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-ne v0, v4, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    if-lt v0, v3, :cond_3

    if-lt v1, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    if-lt v0, v3, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    if-lt v1, v3, :cond_5

    move v2, v6

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    move v2, v5

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    move v2, v6

    goto :goto_0

    :cond_8
    sub-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_9

    move v2, v5

    goto :goto_0

    :cond_9
    if-ge v0, v1, :cond_a

    move v2, v6

    goto :goto_0

    :cond_a
    if-ne v0, v1, :cond_b

    move v2, v5

    goto :goto_0

    :cond_b
    move v2, v4

    goto :goto_0
.end method

.method private compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 3

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private goodEnoughBlink()Z
    .locals 2

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private goodEnoughSmile()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoRealibleInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v1, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v1, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v1, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v1, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    iget-object v1, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$3(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    move-object v0, p1

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-object v2, v0

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$0(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_0

    :cond_7
    iget-object v3, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v1

    if-eqz v1, :cond_9

    move v3, v1

    goto :goto_0

    :cond_9
    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v3

    goto :goto_0
.end method
