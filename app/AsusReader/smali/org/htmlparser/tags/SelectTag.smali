.class public Lorg/htmlparser/tags/SelectTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "SelectTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SELECT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mIds:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "INPUT"

    aput-object v1, v0, v2

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v3

    const-string v1, "SELECT"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mEnders:[Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method
