.class public final enum Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;
.super Ljava/lang/Enum;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlternateUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit; = null

.field public static final enum UTF8_BYTES:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit; = null

.field public static final UTF8_BYTES_VALUE:I = 0x1

.field public static final enum WORD:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

.field public static final WORD_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->WORD:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    .line 16
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    const-string v1, "UTF8_BYTES"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->UTF8_BYTES:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->WORD:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->UTF8_BYTES:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    .line 38
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->value:I

    .line 49
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;
    .locals 1
    .parameter

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->WORD:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->UTF8_BYTES:Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;->value:I

    return v0
.end method
