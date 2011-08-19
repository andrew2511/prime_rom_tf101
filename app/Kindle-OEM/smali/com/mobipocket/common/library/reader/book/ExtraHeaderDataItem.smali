.class public Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
.super Ljava/lang/Object;
.source "ExtraHeaderDataItem.java"


# static fields
.field public static final HXDATA_ASIN:I = 0x71

.field public static final HXDATA_App_CDEContentKey:I = 0x1f8

.field public static final HXDATA_App_CDEContentType:I = 0x1f5

.field public static final HXDATA_App_LastUpdateTime:I = 0x1f6

.field public static final HXDATA_App_UpdatedTitle:I = 0x1f7

.field public static final HXDATA_Application_Binary_Max:I = 0x1f3

.field public static final HXDATA_Application_Binary_Min:I = 0x190

.field public static final HXDATA_Application_String_Max:I = 0x257

.field public static final HXDATA_Application_String_Min:I = 0x1f4

.field public static final HXDATA_Author:I = 0x64

.field static final HXDATA_CommerceID:I = 0x2

.field public static final HXDATA_Contributor:I = 0x6c

.field static final HXDATA_CoverIsFake:I = 0xcb

.field static final HXDATA_CoverRecord:I = 0xc9

.field static final HXDATA_CoverThumbRecord:I = 0xca

.field static final HXDATA_CreatorBuildNumber:I = 0xcf

.field static final HXDATA_CreatorMajorVersion:I = 0xcd

.field static final HXDATA_CreatorMinorVersion:I = 0xce

.field static final HXDATA_CreatorSoftware:I = 0xcc

.field public static final HXDATA_Description:I = 0x67

.field static final HXDATA_DrmserverID:I = 0x1

.field static final HXDATA_EbookbaseBookID:I = 0x3

.field static final HXDATA_FontSignature:I = 0x12c

.field public static final HXDATA_ISBN:I = 0x68

.field public static final HXDATA_Imprint:I = 0x66

.field public static final HXDATA_Publisher:I = 0x65

.field public static final HXDATA_PublishingDate:I = 0x6a

.field public static final HXDATA_Review:I = 0x6b

.field public static final HXDATA_Rights:I = 0x6d

.field public static final HXDATA_Sample:I = 0x73

.field static final HXDATA_ShortDicName:I = 0xc8

.field public static final HXDATA_Source:I = 0x70

.field public static final HXDATA_StartReading:I = 0x74

.field public static final HXDATA_Subject:I = 0x69

.field public static final HXDATA_SubjectCode:I = 0x6e

.field public static final HXDATA_TamperproofKeys:I = 0xd1

.field static final HXDATA_Title:I = 0x63

.field public static final HXDATA_Type:I = 0x6f

.field public static final HXDATA_VersionNumber:I = 0x72

.field public static final HXDATA_Watermark:I = 0xd0


# instance fields
.field binaryValue:[B

.field private identifier:I

.field isBinary:Z

.field stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "HXDATA_code"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary:Z

    .line 97
    iput p2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->identifier:I

    .line 98
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "b"
    .parameter "HXDATA_code"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->binaryValue:[B

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary:Z

    .line 112
    iput p2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->identifier:I

    .line 113
    return-void
.end method


# virtual methods
.method public getBinaryValue()[B
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->binaryValue:[B

    return-object v0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->identifier:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->isBinary:Z

    return v0
.end method
