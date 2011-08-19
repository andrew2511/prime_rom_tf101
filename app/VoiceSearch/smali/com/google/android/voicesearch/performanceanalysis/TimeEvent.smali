.class public Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;
.super Ljava/lang/Object;
.source "TimeEvent.java"


# static fields
.field public static final FORMATTER:Ljava/text/SimpleDateFormat;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEnd:Ljava/util/Date;

.field private mIsInSnippet:Z

.field private mStart:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    .line 36
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mDescription:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mIsInSnippet:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getEndTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    return-object v0
.end method

.method public getStartTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isInSnippet()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mIsInSnippet:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mDescription:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setEndTimeToCurrentTime()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->mEnd:Ljava/util/Date;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->getStartTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->getDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
