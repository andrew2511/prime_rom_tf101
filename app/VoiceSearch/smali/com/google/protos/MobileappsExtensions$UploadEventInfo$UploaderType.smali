.class public final enum Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType; = null

.field public static final enum PANORAMIO_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType; = null

.field public static final PANORAMIO_UPLOADER_VALUE:I = 0x3

.field public static final enum PICASA_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType; = null

.field public static final PICASA_UPLOADER_VALUE:I = 0x2

.field public static final enum YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType; = null

.field public static final YOUTUBE_UPLOADER_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1915
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    const-string v1, "YOUTUBE_UPLOADER"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 1916
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    const-string v1, "PICASA_UPLOADER"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PICASA_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 1917
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    const-string v1, "PANORAMIO_UPLOADER"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PANORAMIO_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 1913
    new-array v0, v5, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PICASA_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PANORAMIO_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    .line 1941
    new-instance v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1950
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1951
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->value:I

    .line 1952
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1938
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 1
    .parameter

    .prologue
    .line 1928
    packed-switch p0, :pswitch_data_0

    .line 1932
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1929
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->YOUTUBE_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    goto :goto_0

    .line 1930
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PICASA_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    goto :goto_0

    .line 1931
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->PANORAMIO_UPLOADER:Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    goto :goto_0

    .line 1928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 1
    .parameter

    .prologue
    .line 1913
    const-class v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    return-object p0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;
    .locals 1

    .prologue
    .line 1913
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1925
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$UploaderType;->value:I

    return v0
.end method
