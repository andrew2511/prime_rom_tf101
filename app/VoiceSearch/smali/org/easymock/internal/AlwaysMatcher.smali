.class public Lorg/easymock/internal/AlwaysMatcher;
.super Lorg/easymock/AbstractMatcher;
.source "AlwaysMatcher.java"


# static fields
.field private static final serialVersionUID:J = 0x83869f1c630ccf8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/easymock/AbstractMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected argumentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "<any>"

    return-object v0
.end method

.method public matches([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
