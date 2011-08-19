.class public Lorg/easymock/internal/matchers/Any;
.super Ljava/lang/Object;
.source "Any.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANY:Lorg/easymock/internal/matchers/Any; = null

.field private static final serialVersionUID:J = -0x33f4fbf1f15b3fb1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/easymock/internal/matchers/Any;

    invoke-direct {v0}, Lorg/easymock/internal/matchers/Any;-><init>()V

    sput-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

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
    const-string v0, "<any>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
