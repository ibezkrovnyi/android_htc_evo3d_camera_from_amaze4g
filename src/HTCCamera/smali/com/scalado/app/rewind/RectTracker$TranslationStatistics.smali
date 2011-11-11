.class Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationStatistics"
.end annotation


# instance fields
.field private mId:I

.field private mImageIndex:I

.field private mRelDx:F

.field private mRelDy:F

.field private mRelVftDx:F

.field private mRelVftDy:F

.field private mSeqCount:I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I

    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I

    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I

    iput p5, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F

    iput p6, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F

    iput p7, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F

    iput p8, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$TranslationStatistics;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I

    return v0
.end method
