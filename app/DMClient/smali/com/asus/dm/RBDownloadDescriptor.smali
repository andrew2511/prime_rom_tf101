.class public final Lcom/asus/dm/RBDownloadDescriptor;
.super Ljava/lang/Object;
.source "RBDownloadDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/dm/RBDownloadDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "RBDownloadDescriptor"


# instance fields
.field public field:[Ljava/lang/String;

.field private installTime:I

.field private priority:Ljava/lang/String;

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/asus/dm/RBDownloadDescriptor$1;

    invoke-direct {v0}, Lcom/asus/dm/RBDownloadDescriptor$1;-><init>()V

    sput-object v0, Lcom/asus/dm/RBDownloadDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[Ljava/lang/String;)V
    .locals 1
    .parameter "size"
    .parameter "field"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->priority:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->installTime:I

    .line 32
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    .line 33
    iput-wide p1, p0, Lcom/asus/dm/RBDownloadDescriptor;->size:J

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->priority:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->installTime:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/asus/dm/RBDownloadDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/dm/RBDownloadDescriptor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/asus/dm/RBDownloadDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInstallParamEstimatedInstallTimeInSecs(Ljava/lang/String;)I
    .locals 6
    .parameter "installParam"

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const-string v4, "RBDownloadDescriptor"

    const-string v5, "getEstimatedInstallTimeInSecs dd = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v4, 0x258

    .line 112
    :goto_0
    return v4

    .line 103
    :cond_0
    const-string v2, "estimatedInstallTimeInSecs="

    .line 104
    .local v2, text:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/asus/dm/RBDownloadDescriptor;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, tmpStr:Ljava/lang/String;
    const/16 v1, 0x258

    .line 108
    .local v1, ret:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v4, v1

    .line 112
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RBDownloadDescriptor"

    const-string v5, "EstimatedInstallTime parse error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstallParamPriority(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "installParam"

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const-string v1, "RBDownloadDescriptor"

    const-string v2, "getPriority dd = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const-string v0, "priority="

    .line 95
    .local v0, text:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/asus/dm/RBDownloadDescriptor;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "installParam"
    .parameter "text"

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, ret:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, LowCaseText:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, tmpStrAry:[Ljava/lang/String;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 79
    .local v5, tmpStr:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 85
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #tmpStr:Ljava/lang/String;
    .end local v6           #tmpStrAry:[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 78
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #tmpStr:Ljava/lang/String;
    .restart local v6       #tmpStrAry:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedInstallTime()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->installTime:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/asus/dm/RBDownloadDescriptor;->getInstallParamEstimatedInstallTimeInSecs(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->installTime:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->installTime:I

    return v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->priority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/asus/dm/RBDownloadDescriptor;->getInstallParamPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->priority:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->size:J

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 51
    iget-wide v0, p0, Lcom/asus/dm/RBDownloadDescriptor;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    return-void
.end method
