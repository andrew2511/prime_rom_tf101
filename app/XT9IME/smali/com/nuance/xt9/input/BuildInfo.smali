.class public Lcom/nuance/xt9/input/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field static BUILD_TYPE_DEV:Ljava/lang/String;

.field static BUILD_TYPE_PRODUCTION:Ljava/lang/String;

.field static BUILD_TYPE_TRIAL:Ljava/lang/String;


# instance fields
.field mBuildDate:Landroid/text/format/Time;

.field mBuildType:Ljava/lang/String;

.field mBuildVersion:Ljava/lang/String;

.field mCodeVersionNumber:I

.field mHasExpired:Z

.field mTrialPeriod:I

.field mUpperCassBuildVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Trial"

    sput-object v0, Lcom/nuance/xt9/input/BuildInfo;->BUILD_TYPE_TRIAL:Ljava/lang/String;

    .line 13
    const-string v0, "Dev"

    sput-object v0, Lcom/nuance/xt9/input/BuildInfo;->BUILD_TYPE_DEV:Ljava/lang/String;

    .line 14
    const-string v0, "Production"

    sput-object v0, Lcom/nuance/xt9/input/BuildInfo;->BUILD_TYPE_PRODUCTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 27
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f080003

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildVersion:Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    .line 30
    const/high16 v4, 0x7f0b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mCodeVersionNumber:I

    .line 31
    const v4, 0x7f080091

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildType:Ljava/lang/String;

    .line 32
    const v4, 0x7f0b0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mTrialPeriod:I

    .line 35
    const v4, 0x7f08008f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, buildDate:Ljava/lang/String;
    const-string v4, "."

    const-string v5, "T"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, rfc2445Format:Ljava/lang/String;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    invoke-virtual {v4, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 45
    .local v3, te:Landroid/util/TimeFormatException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No build number, assume it\'s dev build"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isPrereleaseCandidateBuild()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isTrialBuild()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isTrialPeriodExpired()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public updateExpirationPeriod()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/nuance/xt9/input/BuildInfo;->isTrialBuild()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 57
    .local v2, currentTime:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 58
    invoke-virtual {v2, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    div-long v3, v7, v10

    .line 59
    .local v3, currentTimeInSeconds:J
    iget-object v7, p0, Lcom/nuance/xt9/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    div-long v0, v7, v10

    .line 60
    .local v0, buildTimeInSeconds:J
    iget v7, p0, Lcom/nuance/xt9/input/BuildInfo;->mTrialPeriod:I

    mul-int/lit8 v7, v7, 0x18

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v5, v7

    .line 66
    .local v5, trialDayInSeconds:J
    cmp-long v7, v3, v0

    if-lez v7, :cond_0

    sub-long v7, v3, v0

    cmp-long v7, v7, v5

    if-ltz v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/nuance/xt9/input/BuildInfo;->mHasExpired:Z

    .line 72
    .end local v0           #buildTimeInSeconds:J
    .end local v2           #currentTime:Landroid/text/format/Time;
    .end local v3           #currentTimeInSeconds:J
    .end local v5           #trialDayInSeconds:J
    :goto_1
    return-void

    .restart local v0       #buildTimeInSeconds:J
    .restart local v2       #currentTime:Landroid/text/format/Time;
    .restart local v3       #currentTimeInSeconds:J
    .restart local v5       #trialDayInSeconds:J
    :cond_1
    move v7, v9

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #buildTimeInSeconds:J
    .end local v2           #currentTime:Landroid/text/format/Time;
    .end local v3           #currentTimeInSeconds:J
    .end local v5           #trialDayInSeconds:J
    :cond_2
    iput-boolean v9, p0, Lcom/nuance/xt9/input/BuildInfo;->mHasExpired:Z

    goto :goto_1
.end method
