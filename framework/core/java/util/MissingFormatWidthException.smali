.class public Ljava/util/MissingFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xed6dbbL


# instance fields
.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 38
    if-nez p1, :cond_b

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_b
    iput-object p1, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getFormatSpecifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method
