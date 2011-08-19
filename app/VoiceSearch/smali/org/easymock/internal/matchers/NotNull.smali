.class public Lorg/easymock/internal/matchers/NotNull;
.super Ljava/lang/Object;
.source "NotNull.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field public static final NOT_NULL:Lorg/easymock/internal/matchers/NotNull; = null

.field private static final serialVersionUID:J = -0x255356ba1f0f63eeL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/easymock/internal/matchers/NotNull;

    invoke-direct {v0}, Lorg/easymock/internal/matchers/NotNull;-><init>()V

    sput-object v0, Lorg/easymock/internal/matchers/NotNull;->NOT_NULL:Lorg/easymock/internal/matchers/NotNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "notNull()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
