.class public Lcom/android/contacts/list/ContactsSectionIndexer;
.super Ljava/lang/Object;
.source "ContactsSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final mCount:I

.field private final mPositions:[I

.field private final mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 44
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The sections and counts arrays must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 52
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aput v1, v2, v0

    .line 62
    aget v2, p2, v0

    add-int/2addr v1, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 64
    :cond_4
    iput v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    .line 65
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 72
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 80
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mCount:I

    if-lt p1, v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, -0x1

    .line 94
    :goto_0
    return v1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 94
    .local v0, index:I
    if-ltz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    neg-int v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/contacts/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method
