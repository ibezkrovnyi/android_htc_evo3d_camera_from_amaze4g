.class Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionBucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    }
.end annotation


# instance fields
.field private mAdded:I

.field private mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

.field private mNumPossible:I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;I)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mAdded:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->sort()V

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I

    return-void
.end method

.method private add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mAdded:I

    new-instance v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;-><init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;)V

    aput-object v0, v6, v7

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mAdded:I

    return-void
.end method

.method private sort()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method
