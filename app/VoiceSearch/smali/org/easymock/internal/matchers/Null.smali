.class public Lorg/easymock/internal/matchers/Null;
.super Ljava/lang/Object;
.source "Null.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field public static final NULL:Lorg/easymock/internal/matchers/Null; = null

.field private static final serialVersionUID:J = 0x5456b5fb9ac595dbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/easymock/internal/matchers/Null;

    invoke-direct {v0}, Lorg/easymock/internal/matchers/Null;-><init>()V

    sput-object v0, Lorg/easymock/internal/matchers/Null;->NULL:Lorg/easymock/internal/matchers/Null;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const-string v0, "isNull()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
