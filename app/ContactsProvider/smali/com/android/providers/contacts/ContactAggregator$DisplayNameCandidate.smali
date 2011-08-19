.class Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayNameCandidate"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field displayNameSource:I

.field rawContactId:J

.field verified:Z

.field writableAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 232
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 237
    iput v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 238
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 240
    return-void
.end method
