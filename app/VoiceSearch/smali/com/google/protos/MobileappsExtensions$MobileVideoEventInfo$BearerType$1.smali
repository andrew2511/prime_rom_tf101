.class final Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType$1;
.super Ljava/lang/Object;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .parameter

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType$1;->findValueByNumber(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1
    .parameter

    .prologue
    .line 881
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    move-result-object v0

    return-object v0
.end method
