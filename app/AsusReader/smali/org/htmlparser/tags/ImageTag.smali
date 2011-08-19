.class public Lorg/htmlparser/tags/ImageTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "ImageTag.java"


# static fields
.field private static final mIds:[Ljava/lang/String;


# instance fields
.field protected imageURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMG"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/ImageTag;->mIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/htmlparser/tags/ImageTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method
