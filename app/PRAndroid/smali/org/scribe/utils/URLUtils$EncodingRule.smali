.class final Lorg/scribe/utils/URLUtils$EncodingRule;
.super Ljava/lang/Object;
.source "URLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/utils/URLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncodingRule"
.end annotation


# instance fields
.field private final ch:Ljava/lang/String;

.field private final toCh:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ch"
    .parameter "toCh"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/scribe/utils/URLUtils$EncodingRule;->ch:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/scribe/utils/URLUtils$EncodingRule;->toCh:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/scribe/utils/URLUtils$EncodingRule;->ch:Ljava/lang/String;

    iget-object v1, p0, Lorg/scribe/utils/URLUtils$EncodingRule;->toCh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
