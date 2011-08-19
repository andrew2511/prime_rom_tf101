.class public final Lcom/google/protos/speech/service/ClientReportProto;
.super Ljava/lang/Object;
.source "ClientReportProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$1;,
        Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;,
        Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;,
        Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;,
        Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;,
        Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;,
        Lcom/google/protos/speech/service/ClientReportProto$MobileInfoOrBuilder;,
        Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;,
        Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfoOrBuilder;,
        Lcom/google/protos/speech/service/ClientReportProto$ClientReport;,
        Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;,
        Lcom/google/protos/speech/service/ClientReportProto$AlternateUnit;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3280
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
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->audioInputInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 11
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->mobileInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 12
    return-void
.end method
