.class public final Lcom/google/protos/speech/apps/intentapi/IntentApi;
.super Ljava/lang/Object;
.source "IntentApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/apps/intentapi/IntentApi$1;,
        Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;,
        Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammarOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    return-void
.end method
