.class public Lorg/scribe/model/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lorg/scribe/utils/URLUtils;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Verifier;->value:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/scribe/model/Verifier;->value:Ljava/lang/String;

    return-object v0
.end method
