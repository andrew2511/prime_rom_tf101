.class public Lcom/infraware/filemanager/FmFileUtil;
.super Ljava/lang/Object;
.source "FmFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;,
        Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;
    }
.end annotation


# static fields
.field public static final CHANNEL_BUFFER_SIZE:I = 0x20000

.field public static final HUGE_FILE_SIZE:I = 0x500000

.field private static final IOEXCEPTION_EOVERFLOW:J = 0x7fffffffL

.field private static final MAXFILENAME:I = 0x3c

.field private static final PERCENT:I = 0x64

.field private static final PREFIXFILENAME:Ljava/lang/String; = "Copy_"

.field private static m_bCancel:Z

.field private static m_bDuplicated:Z

.field private static m_deletePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m_destPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_eMode:I

.field private static m_nCopyAmount:I

.field private static m_nCount:I

.field private static m_nCurSize:J

.field private static m_nFullSize:J

.field private static m_nPropertySize:J

.field private static m_nYieldInterval:I

.field public static m_oHandler:Landroid/os/Handler;

.field private static m_srcPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_strSrcParentPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 33
    sput-boolean v1, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    .line 34
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .line 35
    sput-wide v2, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    .line 36
    sput-wide v2, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 37
    sput-wide v2, Lcom/infraware/filemanager/FmFileUtil;->m_nPropertySize:J

    .line 39
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_eMode:I

    .line 40
    const/high16 v0, 0x2

    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    .line 41
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    .line 44
    sput-boolean v1, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_deletePathList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileCopyModeOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1134
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_eMode:I

    .line 1135
    const/high16 v0, 0x2

    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    .line 1136
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    .line 1137
    return-void
.end method

.method public static FileCopyModeOn(III)V
    .locals 2
    .parameter "a_eMode"
    .parameter "a_nCopyAmount"
    .parameter "a_nYieldInterval"

    .prologue
    const/high16 v0, 0x2

    const/4 v1, 0x0

    .line 1111
    packed-switch p0, :pswitch_data_0

    .line 1130
    :goto_0
    return-void

    .line 1115
    :pswitch_0
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_eMode:I

    .line 1116
    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    .line 1117
    sput v1, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    goto :goto_0

    .line 1122
    :pswitch_1
    sput p0, Lcom/infraware/filemanager/FmFileUtil;->m_eMode:I

    .line 1123
    if-lez p1, :cond_0

    move v0, p1

    :cond_0
    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    .line 1124
    if-lez p2, :cond_1

    move v0, p2

    :goto_1
    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static IsFileExist(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strDestPath"

    .prologue
    .line 1040
    return-void
.end method

.method static synthetic access$0(J)V
    .locals 0
    .parameter

    .prologue
    .line 37
    sput-wide p0, Lcom/infraware/filemanager/FmFileUtil;->m_nPropertySize:J

    return-void
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/infraware/filemanager/FmFileUtil;->m_nPropertySize:J

    return-wide v0
.end method

.method public static clearCount()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    sput v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .line 1055
    return-void
.end method

.method public static clearFlags()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    .line 1107
    return-void
.end method

.method public static clearPathList()V
    .locals 1

    .prologue
    .line 1100
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1101
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_deletePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1102
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1103
    return-void
.end method

.method public static clearSize()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1058
    sput-wide v0, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    .line 1059
    sput-wide v0, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 1060
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)I
    .locals 27
    .parameter "srcFile"
    .parameter "destFile"
    .parameter "abKeepSrcFile"

    .prologue
    .line 405
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    .line 406
    .local v10, strSrcPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, strDestPath:Ljava/lang/String;
    if-eqz p2, :cond_7

    invoke-virtual {v10, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    const/4 v4, 0x1

    .line 415
    .local v4, nNum:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_1

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copy_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, strPrefixFileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, strPath:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #strPrefixFileName:Ljava/lang/String;
    .local v8, strPrefixFileName:Ljava/lang/String;
    move-object v7, v6

    .line 425
    .end local v6           #strPath:Ljava/lang/String;
    .local v7, strPath:Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x3c

    if-le v6, v9, :cond_2

    .line 426
    const/16 p0, -0x12

    .line 726
    .end local v4           #nNum:I
    .end local v5           #strDestPath:Ljava/lang/String;
    .end local v7           #strPath:Ljava/lang/String;
    .end local v8           #strPrefixFileName:Ljava/lang/String;
    .end local v10           #strSrcPath:Ljava/lang/String;
    .end local p0
    .end local p2
    :cond_0
    :goto_1
    return p0

    .line 421
    .restart local v4       #nNum:I
    .restart local v5       #strDestPath:Ljava/lang/String;
    .restart local v10       #strSrcPath:Ljava/lang/String;
    .restart local p0
    .restart local p2
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copy_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 422
    .local v7, strPrefixFileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #strPath:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #strPrefixFileName:Ljava/lang/String;
    .restart local v8       #strPrefixFileName:Ljava/lang/String;
    move-object v7, v6

    .end local v6           #strPath:Ljava/lang/String;
    .local v7, strPath:Ljava/lang/String;
    goto :goto_0

    .line 429
    :cond_2
    new-instance p1, Ljava/io/File;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local p1
    invoke-static {v8}, Lcom/infraware/filemanager/FmFileUtil;->getFileExtString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, strExtension:Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 433
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 436
    .end local v8           #strPrefixFileName:Ljava/lang/String;
    .local v9, strPrefixFileName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 437
    invoke-virtual {v10, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    .end local v7           #strPath:Ljava/lang/String;
    if-nez v7, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 438
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_4

    .line 439
    if-eqz v6, :cond_3

    .line 440
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, strPostfixFileName:Ljava/lang/String;
    move-object v8, v7

    .line 444
    .end local v7           #strPostfixFileName:Ljava/lang/String;
    .local v8, strPostfixFileName:Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, strPath:Ljava/lang/String;
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .end local v8           #strPostfixFileName:Ljava/lang/String;
    const/16 v11, 0x3c

    if-le v8, v11, :cond_6

    .line 457
    const/16 p0, -0x12

    goto/16 :goto_1

    .line 442
    .end local v7           #strPath:Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, strPostfixFileName:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #strPostfixFileName:Ljava/lang/String;
    .restart local v8       #strPostfixFileName:Ljava/lang/String;
    goto :goto_3

    .line 448
    .end local v8           #strPostfixFileName:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #strPostfixFileName:Ljava/lang/String;
    move-object v8, v7

    .line 453
    .end local v7           #strPostfixFileName:Ljava/lang/String;
    .restart local v8       #strPostfixFileName:Ljava/lang/String;
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, strPath:Ljava/lang/String;
    goto :goto_4

    .line 451
    .end local v7           #strPath:Ljava/lang/String;
    .end local v8           #strPostfixFileName:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, strPostfixFileName:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #strPostfixFileName:Ljava/lang/String;
    .restart local v8       #strPostfixFileName:Ljava/lang/String;
    goto :goto_5

    .line 460
    .end local v8           #strPostfixFileName:Ljava/lang/String;
    .local v7, strPath:Ljava/lang/String;
    :cond_6
    new-instance p1, Ljava/io/File;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local p1
    goto/16 :goto_2

    .line 468
    .end local v4           #nNum:I
    .end local v6           #strExtension:Ljava/lang/String;
    .end local v7           #strPath:Ljava/lang/String;
    .end local v9           #strPrefixFileName:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 469
    sget-boolean v4, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    if-eqz v4, :cond_a

    .line 470
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 479
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 480
    .local v14, oMessage:Landroid/os/Message;
    const/16 v4, 0x13

    iput v4, v14, Landroid/os/Message;->what:I

    .line 481
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v4, :cond_9

    .line 483
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    :cond_9
    if-nez p2, :cond_f

    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, freeBlock:I
    const/16 p2, 0x0

    .line 490
    .local p2, blockSize:I
    :try_start_0
    new-instance p2, Landroid/os/StatFs;

    .end local p2           #blockSize:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .end local v5           #strDestPath:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 491
    .local p2, sf:Landroid/os/StatFs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 497
    .local p2, blockSize:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 499
    .local v7, size:J
    const-wide/32 v5, 0x500000

    cmp-long v5, v7, v5

    if-lez v5, :cond_b

    const-wide/32 v5, 0x780000

    :goto_6
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v9, v0

    div-long/2addr v5, v9

    .line 500
    .local v5, minFree:J
    int-to-long v9, v4

    cmp-long p2, v9, v5

    if-gez p2, :cond_c

    .line 501
    .end local p2           #blockSize:I
    const/16 p0, -0xd

    goto/16 :goto_1

    .line 473
    .end local v4           #freeBlock:I
    .end local v7           #size:J
    .end local v14           #oMessage:Landroid/os/Message;
    .local v5, strDestPath:Ljava/lang/String;
    .local p2, abKeepSrcFile:Z
    :cond_a
    const/16 p0, 0x1

    sput-boolean p0, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    .line 474
    .end local p0
    const/16 p0, -0x3

    goto/16 :goto_1

    .line 493
    .end local v5           #strDestPath:Ljava/lang/String;
    .end local p2           #abKeepSrcFile:Z
    .restart local v4       #freeBlock:I
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local p0
    :catch_0
    move-exception p0

    move/from16 p2, v4

    .line 494
    .end local v4           #freeBlock:I
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p2, freeBlock:I
    const/16 p0, -0xd

    goto/16 :goto_1

    .line 499
    .restart local v4       #freeBlock:I
    .restart local v7       #size:J
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :cond_b
    const-wide/16 v5, 0x2

    div-long v5, v7, v5

    add-long/2addr v5, v7

    goto :goto_6

    .line 504
    .end local p2           #blockSize:I
    .local v5, minFree:J
    :cond_c
    const-wide/16 v4, 0x0

    .line 505
    .end local v5           #minFree:J
    .local v4, count:J
    const/16 p2, 0x0

    .line 507
    .local p2, nProgress:I
    :try_start_1
    sget-boolean v6, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-eqz v6, :cond_d

    .line 508
    const/16 p0, -0x16

    goto/16 :goto_1

    .line 509
    :cond_d
    invoke-virtual/range {p0 .. p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 510
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    .line 512
    sget-wide v9, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    add-long v6, v9, v7

    sput-wide v6, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 513
    sget-wide v6, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    .line 514
    const/16 v6, 0x64

    sget v7, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .end local v7           #size:J
    div-int p2, v6, v7

    .line 515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 516
    .end local v14           #oMessage:Landroid/os/Message;
    .local v6, oMessage:Landroid/os/Message;
    const/16 v7, 0x12

    :try_start_2
    iput v7, v6, Landroid/os/Message;->what:I

    .line 517
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object v1, v6

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 518
    sget-object v7, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v7, :cond_45

    .line 519
    sget-object v7, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    move-object v4, v6

    .line 538
    .end local v6           #oMessage:Landroid/os/Message;
    .end local v10           #strSrcPath:Ljava/lang/String;
    .local v4, oMessage:Landroid/os/Message;
    :goto_7
    new-instance p2, Lcom/infraware/filemanager/bookclip/BookClipHelper;

    .end local p2           #nProgress:I
    invoke-direct/range {p2 .. p2}, Lcom/infraware/filemanager/bookclip/BookClipHelper;-><init>()V

    .line 539
    .local p2, book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #srcFile:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .end local v4           #oMessage:Landroid/os/Message;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->MoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 522
    .local v4, count:J
    .restart local v7       #size:J
    .restart local v10       #strSrcPath:Ljava/lang/String;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local p0       #srcFile:Ljava/io/File;
    .local p2, nProgress:I
    :cond_e
    :try_start_3
    sget-wide v6, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    sget-wide v8, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    div-long/2addr v6, v8

    move-wide v0, v6

    long-to-int v0, v0

    move/from16 p2, v0

    .line 523
    if-lez p2, :cond_46

    .line 524
    sget-wide v6, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    sget-wide v8, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    .end local v10           #strSrcPath:Ljava/lang/String;
    sub-long/2addr v6, v8

    sput-wide v6, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 525
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 526
    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    const/16 v7, 0x12

    :try_start_4
    iput v7, v6, Landroid/os/Message;->what:I

    .line 527
    .end local v7           #size:J
    move/from16 v0, p2

    move-object v1, v6

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 528
    sget-object v7, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v7, :cond_45

    .line 529
    sget-object v7, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    move-object v4, v6

    .end local v6           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    goto :goto_7

    .line 533
    .local v4, count:J
    .restart local v14       #oMessage:Landroid/os/Message;
    :catch_1
    move-exception p0

    move-object v6, v14

    .line 534
    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 544
    .end local v4           #count:J
    .end local v6           #oMessage:Landroid/os/Message;
    .local v5, strDestPath:Ljava/lang/String;
    .restart local v10       #strSrcPath:Ljava/lang/String;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, abKeepSrcFile:Z
    :cond_f
    const/4 v5, 0x0

    .line 545
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 546
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 547
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    const/4 v9, 0x0

    .line 549
    .local v9, fcOut:Ljava/nio/channels/FileChannel;
    const/16 p2, 0x0

    .line 551
    .local p2, result:I
    const/4 v7, 0x0

    .line 552
    .local v7, freeBlock:I
    const/16 p2, 0x0

    .line 554
    .local p2, blockSize:I
    :try_start_5
    new-instance p2, Landroid/os/StatFs;

    .end local p2           #blockSize:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 555
    .local p2, sf:Landroid/os/StatFs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v10

    .line 556
    .end local v7           #freeBlock:I
    .local v10, freeBlock:I
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_15

    move-result p2

    .line 563
    .local p2, blockSize:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v7, v11

    if-gez v7, :cond_2d

    .line 565
    :try_start_7
    new-instance v12, Ljava/io/FileInputStream;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 566
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    .line 569
    .local v15, size:J
    new-instance v13, Ljava/io/FileOutputStream;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    .line 570
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 572
    const-wide/32 v5, 0x500000

    cmp-long v5, v15, v5

    if-lez v5, :cond_13

    const-wide/32 v5, 0x780000

    :goto_9
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v7, v0

    div-long/2addr v5, v7

    .line 573
    .local v5, minFree:J
    int-to-long v7, v10

    cmp-long p2, v7, v5

    if-gez p2, :cond_14

    .line 575
    .end local p2           #blockSize:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13

    .line 576
    const/16 p0, -0xd

    .line 630
    .local p0, result:I
    if-eqz v4, :cond_10

    :try_start_a
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_11
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 633
    :cond_12
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 634
    :catch_2
    move-exception p0

    .line 635
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 557
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #size:J
    .local v5, fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #freeBlock:I
    .local v10, strSrcPath:Ljava/lang/String;
    .local p0, srcFile:Ljava/io/File;
    :catch_3
    move-exception p0

    move/from16 p2, v7

    .line 558
    .end local v7           #freeBlock:I
    .end local v10           #strSrcPath:Ljava/lang/String;
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p2, freeBlock:I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 559
    const/16 p0, -0xd

    .line 560
    .local p0, result:I
    goto/16 :goto_1

    .line 572
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #size:J
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :cond_13
    const-wide/16 v5, 0x2

    :try_start_b
    div-long v5, v15, v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13

    add-long/2addr v5, v15

    goto :goto_9

    .line 580
    .end local p2           #blockSize:I
    .local v5, minFree:J
    :cond_14
    const-wide/16 v5, 0x0

    .line 581
    .local v5, position:J
    const-wide/16 v7, 0x0

    .line 582
    .local v7, count:J
    const-wide/16 v10, 0x0

    .line 583
    .local v10, tempPos:J
    const/16 p2, 0x0

    .local p2, nProgress:I
    move-wide/from16 v25, v10

    .end local v10           #tempPos:J
    .local v25, tempPos:J
    move-wide v10, v7

    .end local v7           #count:J
    .local v10, count:J
    move-wide/from16 v7, v25

    .line 585
    .end local v25           #tempPos:J
    .local v7, tempPos:J
    :goto_b
    cmp-long p2, v5, v15

    if-ltz p2, :cond_18

    .line 630
    .end local p2           #nProgress:I
    if-eqz v4, :cond_15

    :try_start_c
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_15
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_16
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 633
    :cond_17
    if-eqz v13, :cond_43

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    move-object v5, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v6, v14

    .line 723
    .end local v7           #tempPos:J
    .end local v14           #oMessage:Landroid/os/Message;
    .local v6, oMessage:Landroid/os/Message;
    :goto_c
    new-instance p2, Lcom/infraware/filemanager/bookclip/BookClipHelper;

    .end local p2           #fis:Ljava/io/FileInputStream;
    invoke-direct/range {p2 .. p2}, Lcom/infraware/filemanager/bookclip/BookClipHelper;-><init>()V

    .line 724
    .local p2, book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0           #srcFile:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .end local v4           #fcIn:Ljava/nio/channels/FileChannel;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 586
    .end local v6           #oMessage:Landroid/os/Message;
    .end local p2           #book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    .restart local v4       #fcIn:Ljava/nio/channels/FileChannel;
    .local v5, position:J
    .restart local v7       #tempPos:J
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local p0       #srcFile:Ljava/io/File;
    :cond_18
    :try_start_d
    sget-boolean p2, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-eqz p2, :cond_21

    .line 587
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 588
    :cond_19
    if-eqz v12, :cond_1a

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 589
    :cond_1a
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 590
    :cond_1b
    if-eqz v13, :cond_1c

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_13

    .line 630
    :cond_1c
    if-eqz v4, :cond_1d

    :try_start_e
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_1d
    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_1e
    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 633
    :cond_1f
    if-eqz v13, :cond_20

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 592
    :cond_20
    const/16 p0, -0x16

    goto/16 :goto_1

    .line 634
    :catch_4
    move-exception p0

    .line 635
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 595
    .local p0, srcFile:Ljava/io/File;
    :cond_21
    :try_start_f
    sget p2, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    if-eqz p2, :cond_22

    .line 596
    sget p2, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 598
    .end local v7           #tempPos:J
    :cond_22
    sget p2, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v7, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v17

    .line 599
    .local v17, tempPos:J
    add-long v5, v5, v17

    .line 600
    const-wide/16 v7, 0x1

    add-long/2addr v7, v10

    .line 602
    .end local v10           #count:J
    .local v7, count:J
    sget-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    add-long v10, v10, v17

    sput-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 603
    sget-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v19, 0x0

    cmp-long p2, v10, v19

    if-nez p2, :cond_23

    .line 604
    const/16 p2, 0x64

    sget v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    div-int p2, p2, v10

    .line 605
    .local p2, nProgress:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    move-result-object v10

    .line 606
    .end local v14           #oMessage:Landroid/os/Message;
    .local v10, oMessage:Landroid/os/Message;
    const/16 v11, 0x12

    :try_start_10
    iput v11, v10, Landroid/os/Message;->what:I

    .line 607
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object v1, v10

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 608
    sget-object v11, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v11, :cond_24

    .line 609
    sget-object v11, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    move-object v14, v10

    .end local v10           #oMessage:Landroid/os/Message;
    .restart local v14       #oMessage:Landroid/os/Message;
    move-wide v10, v7

    .end local v7           #count:J
    .local v10, count:J
    move-wide/from16 v7, v17

    .end local v17           #tempPos:J
    .local v7, tempPos:J
    goto/16 :goto_b

    .line 612
    .end local v10           #count:J
    .end local p2           #nProgress:I
    .local v7, count:J
    .restart local v17       #tempPos:J
    :cond_23
    :try_start_11
    sget-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    const-wide/16 v19, 0x64

    mul-long v10, v10, v19

    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    div-long v10, v10, v19

    move-wide v0, v10

    long-to-int v0, v0

    move/from16 p2, v0

    .line 613
    .restart local p2       #nProgress:I
    if-lez p2, :cond_44

    .line 614
    sget-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v21, 0x64

    div-long v19, v19, v21

    sub-long v10, v10, v19

    sput-wide v10, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 615
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13

    move-result-object v10

    .line 616
    .end local v14           #oMessage:Landroid/os/Message;
    .local v10, oMessage:Landroid/os/Message;
    const/16 v11, 0x12

    :try_start_12
    iput v11, v10, Landroid/os/Message;->what:I

    .line 617
    move/from16 v0, p2

    move-object v1, v10

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 618
    sget-object v11, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v11, :cond_24

    .line 619
    sget-object v11, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    :cond_24
    move-object v14, v10

    .end local v10           #oMessage:Landroid/os/Message;
    .restart local v14       #oMessage:Landroid/os/Message;
    move-wide v10, v7

    .end local v7           #count:J
    .local v10, count:J
    move-wide/from16 v7, v17

    .end local v17           #tempPos:J
    .local v7, tempPos:J
    goto/16 :goto_b

    .line 623
    .end local v7           #tempPos:J
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #size:J
    .local v5, fis:Ljava/io/FileInputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .local p2, blockSize:I
    :catch_5
    move-exception p0

    move-object/from16 p2, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object v6, v14

    .line 624
    .end local v10           #freeBlock:I
    .end local v14           #oMessage:Landroid/os/Message;
    .local v6, oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    :goto_d
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 630
    if-eqz v4, :cond_25

    :try_start_14
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_25
    if-eqz p2, :cond_26

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_26
    if-eqz v9, :cond_27

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 633
    :cond_27
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    .line 625
    :cond_28
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 634
    :catch_6
    move-exception p0

    .line 635
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 627
    .local v5, fis:Ljava/io/FileInputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    .restart local v10       #freeBlock:I
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :catchall_0
    move-exception p0

    move-object/from16 p2, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object v5, v14

    .line 630
    .end local v10           #freeBlock:I
    .end local v14           #oMessage:Landroid/os/Message;
    .local v5, oMessage:Landroid/os/Message;
    :goto_e
    if-eqz v4, :cond_29

    :try_start_15
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 631
    :cond_29
    if-eqz p0, :cond_2a

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->close()V

    .line 632
    :cond_2a
    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 633
    :cond_2b
    if-eqz p2, :cond_2c

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 637
    :cond_2c
    throw v6

    .line 634
    :catch_7
    move-exception p0

    .line 635
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 634
    .end local p2           #fos:Ljava/io/FileOutputStream;
    .local v5, position:J
    .restart local v7       #tempPos:J
    .local v10, count:J
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    .local p0, srcFile:Ljava/io/File;
    :catch_8
    move-exception p0

    .line 635
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 642
    .end local v7           #tempPos:J
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #size:J
    .local v5, fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :cond_2d
    :try_start_16
    new-instance v8, Ljava/io/FileInputStream;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 643
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_17
    new-instance v12, Ljava/io/FileOutputStream;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    .line 646
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    :try_start_18
    sget v5, Lcom/infraware/filemanager/FmFileUtil;->m_nCopyAmount:I

    new-array v7, v5, [B

    .line 648
    .local v7, buffer:[B
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 650
    .restart local v15       #size:J
    const-wide/32 v5, 0x500000

    cmp-long v5, v15, v5

    if-lez v5, :cond_2f

    const-wide/32 v5, 0x780000

    :goto_f
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v5, v5, v17

    .line 651
    .local v5, minFree:J
    int-to-long v10, v10

    cmp-long p2, v10, v5

    if-gez p2, :cond_30

    .line 653
    .end local v10           #freeBlock:I
    .end local p2           #blockSize:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    .line 654
    const/16 p0, -0xd

    .line 715
    .local p0, result:I
    if-eqz v8, :cond_2e

    :try_start_19
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 716
    :cond_2e
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    goto/16 :goto_1

    .line 717
    :catch_9
    move-exception p0

    .line 718
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 650
    .end local v5           #minFree:J
    .restart local v10       #freeBlock:I
    .local p0, srcFile:Ljava/io/File;
    .restart local p2       #blockSize:I
    :cond_2f
    const-wide/16 v5, 0x2

    :try_start_1a
    div-long v5, v15, v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    add-long/2addr v5, v15

    goto :goto_f

    .line 658
    .end local v10           #freeBlock:I
    .end local p2           #blockSize:I
    .restart local v5       #minFree:J
    :cond_30
    const-wide/16 v5, 0x0

    .line 659
    .local v5, position:J
    const-wide/16 v10, 0x0

    .line 660
    .local v10, count:J
    const-wide/16 v17, 0x0

    .line 661
    .restart local v17       #tempPos:J
    const/16 p2, 0x0

    .local p2, nProgress:I
    move-object v13, v14

    .line 663
    .end local v14           #oMessage:Landroid/os/Message;
    .local v13, oMessage:Landroid/os/Message;
    :cond_31
    :goto_10
    cmp-long p2, v5, v15

    if-ltz p2, :cond_33

    .end local p2           #nProgress:I
    const-wide/16 v19, -0x1

    cmp-long p2, v17, v19

    if-eqz p2, :cond_33

    move-wide/from16 v5, v17

    .line 715
    .end local v17           #tempPos:J
    .local v5, tempPos:J
    :goto_11
    if-eqz v8, :cond_32

    :try_start_1b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 716
    :cond_32
    if-eqz v12, :cond_41

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    move-object v5, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v6, v13

    .end local v13           #oMessage:Landroid/os/Message;
    .local v6, oMessage:Landroid/os/Message;
    goto/16 :goto_c

    .line 665
    .end local v6           #oMessage:Landroid/os/Message;
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v5, position:J
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #oMessage:Landroid/os/Message;
    .restart local v17       #tempPos:J
    :cond_33
    :try_start_1c
    sget-boolean p2, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-eqz p2, :cond_38

    .line 666
    if-eqz v8, :cond_34

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 667
    :cond_34
    if-eqz v12, :cond_35

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    .line 715
    :cond_35
    if-eqz v8, :cond_36

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 716
    :cond_36
    if-eqz v12, :cond_37

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    .line 669
    :cond_37
    const/16 p0, -0x16

    goto/16 :goto_1

    .line 717
    :catch_a
    move-exception p0

    .line 718
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 672
    .local p0, srcFile:Ljava/io/File;
    :cond_38
    :try_start_1e
    sget p2, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    if-eqz p2, :cond_39

    .line 673
    sget p2, Lcom/infraware/filemanager/FmFileUtil;->m_nYieldInterval:I

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    .line 675
    .end local v17           #tempPos:J
    :cond_39
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 676
    .restart local v17       #tempPos:J
    const-wide/16 v19, -0x1

    cmp-long p2, v17, v19

    if-nez p2, :cond_3b

    .line 678
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 679
    :cond_3a
    if-eqz v12, :cond_42

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    move-wide/from16 v5, v17

    .line 680
    .end local v17           #tempPos:J
    .local v5, tempPos:J
    goto :goto_11

    .line 683
    .local v5, position:J
    .restart local v17       #tempPos:J
    :cond_3b
    const/16 p2, 0x0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v14, v0

    move-object v0, v12

    move-object v1, v7

    move/from16 v2, p2

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 684
    add-long v5, v5, v17

    .line 685
    const-wide/16 v19, 0x1

    add-long v10, v10, v19

    .line 687
    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    add-long v19, v19, v17

    sput-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 688
    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v21, 0x0

    cmp-long p2, v19, v21

    if-nez p2, :cond_3e

    .line 689
    const/16 p2, 0x64

    sget v14, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    div-int p2, p2, v14

    .line 690
    .local p2, nProgress:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 691
    const/16 v14, 0x12

    iput v14, v13, Landroid/os/Message;->what:I

    .line 692
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object v1, v13

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 693
    sget-object v14, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v14, :cond_31

    .line 694
    sget-object v14, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v14, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    goto/16 :goto_10

    .line 708
    .end local v17           #tempPos:J
    .end local p2           #nProgress:I
    :catch_b
    move-exception p0

    move-object v4, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v5, v13

    .line 709
    .end local v7           #buffer:[B
    .end local v10           #count:J
    .end local v13           #oMessage:Landroid/os/Message;
    .end local v15           #size:J
    .local v5, oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    :goto_12
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 715
    if-eqz p2, :cond_3c

    :try_start_20
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V

    .line 716
    :cond_3c
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c

    .line 710
    :cond_3d
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 697
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .local v5, position:J
    .restart local v7       #buffer:[B
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #count:J
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    .restart local v17       #tempPos:J
    .local p0, srcFile:Ljava/io/File;
    :cond_3e
    :try_start_21
    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    const-wide/16 v21, 0x64

    mul-long v19, v19, v21

    sget-wide v21, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 p2, v0

    .line 698
    .local p2, nProgress:I
    if-lez p2, :cond_31

    .line 699
    sget-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    sget-wide v21, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v23, 0x64

    div-long v21, v21, v23

    sub-long v19, v19, v21

    sput-wide v19, Lcom/infraware/filemanager/FmFileUtil;->m_nCurSize:J

    .line 700
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 701
    const/16 v14, 0x12

    iput v14, v13, Landroid/os/Message;->what:I

    .line 702
    move/from16 v0, p2

    move-object v1, v13

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 703
    sget-object v14, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v14, :cond_31

    .line 704
    sget-object v14, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v14, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    goto/16 :goto_10

    .line 712
    .end local v17           #tempPos:J
    .end local p2           #nProgress:I
    :catchall_1
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p2, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v4, v13

    .end local v13           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    move-object/from16 p0, v8

    .line 715
    .end local v5           #position:J
    .end local v7           #buffer:[B
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #count:J
    .end local v15           #size:J
    .local p0, fis:Ljava/io/FileInputStream;
    :goto_13
    if-eqz p0, :cond_3f

    :try_start_22
    invoke-virtual/range {p0 .. p0}, Ljava/io/FileInputStream;->close()V

    .line 716
    :cond_3f
    if-eqz p2, :cond_40

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d

    .line 720
    :cond_40
    throw v5

    .line 717
    .local v4, fos:Ljava/io/FileOutputStream;
    .local v5, oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    .local p2, fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception p0

    .line 718
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 717
    .end local v5           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    .local p0, fis:Ljava/io/FileInputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception p0

    .line 718
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 717
    .end local p2           #fos:Ljava/io/FileOutputStream;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .local v5, tempPos:J
    .restart local v7       #buffer:[B
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #count:J
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    .local p0, srcFile:Ljava/io/File;
    :catch_e
    move-exception p0

    .line 718
    .local p0, e:Ljava/io/IOException;
    const/16 p0, -0x1

    goto/16 :goto_1

    .line 712
    .end local v7           #buffer:[B
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #oMessage:Landroid/os/Message;
    .end local v15           #size:J
    .local v5, fis:Ljava/io/FileInputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :catchall_2
    move-exception p0

    move-object/from16 p2, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v4, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    move-object/from16 v25, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v25, fis:Ljava/io/FileInputStream;
    move-object/from16 v5, p0

    move-object/from16 p0, v25

    .end local v25           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_13

    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :catchall_3
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p2, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v4, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    move-object/from16 p0, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_13

    .end local v10           #freeBlock:I
    .end local p2           #fos:Ljava/io/FileOutputStream;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    :catchall_4
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p2, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local p2       #fos:Ljava/io/FileOutputStream;
    move-object v4, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    move-object/from16 p0, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto :goto_13

    .local v4, fos:Ljava/io/FileOutputStream;
    .local v5, oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    .local p2, fis:Ljava/io/FileInputStream;
    :catchall_5
    move-exception p0

    move-object/from16 v25, p0

    move-object/from16 p0, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object/from16 p2, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    move-object/from16 v5, v25

    goto :goto_13

    .line 708
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .local v5, fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #freeBlock:I
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :catch_f
    move-exception p0

    move-object v4, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v5, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v5, oMessage:Landroid/os/Message;
    goto/16 :goto_12

    .end local v5           #oMessage:Landroid/os/Message;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p2, blockSize:I
    :catch_10
    move-exception p0

    move-object v4, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v5, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v5       #oMessage:Landroid/os/Message;
    goto/16 :goto_12

    .end local v5           #oMessage:Landroid/os/Message;
    .end local v10           #freeBlock:I
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    :catch_11
    move-exception p0

    move-object v4, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    move-object v5, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v5       #oMessage:Landroid/os/Message;
    goto/16 :goto_12

    .line 627
    .end local v5           #oMessage:Landroid/os/Message;
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #freeBlock:I
    .local v12, fis:Ljava/io/FileInputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p2, blockSize:I
    :catchall_6
    move-exception p0

    move-object/from16 p2, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v5, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v5       #oMessage:Landroid/os/Message;
    move-object/from16 v6, p0

    move-object/from16 p0, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v5           #oMessage:Landroid/os/Message;
    .end local v10           #freeBlock:I
    .end local p2           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    .local p0, srcFile:Ljava/io/File;
    :catchall_7
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p2, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local p2       #fos:Ljava/io/FileOutputStream;
    move-object v5, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v5       #oMessage:Landroid/os/Message;
    move-object/from16 p0, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .local v5, position:J
    .local v7, count:J
    .local v10, oMessage:Landroid/os/Message;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #tempPos:J
    .local p0, srcFile:Ljava/io/File;
    .local p2, nProgress:I
    :catchall_8
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p2, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v5, v10

    .end local v10           #oMessage:Landroid/os/Message;
    .local v5, oMessage:Landroid/os/Message;
    move-object/from16 p0, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v7           #count:J
    .end local v15           #size:J
    .end local v17           #tempPos:J
    .local v5, fos:Ljava/io/FileOutputStream;
    .local v6, oMessage:Landroid/os/Message;
    .local p0, e:Ljava/lang/Exception;
    .local p2, fis:Ljava/io/FileInputStream;
    :catchall_9
    move-exception p0

    move-object/from16 v25, p0

    move-object/from16 p0, p2

    .end local p2           #fis:Ljava/io/FileInputStream;
    .local p0, fis:Ljava/io/FileInputStream;
    move-object/from16 p2, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local p2, fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #oMessage:Landroid/os/Message;
    .local v5, oMessage:Landroid/os/Message;
    move-object/from16 v6, v25

    goto/16 :goto_e

    .line 623
    .end local v5           #oMessage:Landroid/os/Message;
    .local v6, fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p0, srcFile:Ljava/io/File;
    .local p2, blockSize:I
    :catch_12
    move-exception p0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v6, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v6, oMessage:Landroid/os/Message;
    goto/16 :goto_d

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #oMessage:Landroid/os/Message;
    .end local v10           #freeBlock:I
    .end local p2           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    :catch_13
    move-exception p0

    move-object v5, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    move-object v6, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    goto/16 :goto_d

    .end local v6           #oMessage:Landroid/os/Message;
    .local v5, position:J
    .restart local v7       #count:J
    .local v10, oMessage:Landroid/os/Message;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #tempPos:J
    .local p2, nProgress:I
    :catch_14
    move-exception p0

    move-object v5, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v6, v10

    .end local v10           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    goto/16 :goto_d

    .line 557
    .end local v7           #count:J
    .end local v15           #size:J
    .end local v17           #tempPos:J
    .local v5, fis:Ljava/io/FileInputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    .local v10, freeBlock:I
    .restart local v14       #oMessage:Landroid/os/Message;
    .local p2, sf:Landroid/os/StatFs;
    :catch_15
    move-exception p0

    move/from16 p2, v10

    .end local v10           #freeBlock:I
    .local p2, freeBlock:I
    goto/16 :goto_a

    .line 533
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #fcOut:Ljava/nio/channels/FileChannel;
    .end local v14           #oMessage:Landroid/os/Message;
    .local v4, count:J
    .local v6, oMessage:Landroid/os/Message;
    .local p2, nProgress:I
    :catch_16
    move-exception p0

    goto/16 :goto_8

    .end local v6           #oMessage:Landroid/os/Message;
    .end local p2           #nProgress:I
    .local v4, fcIn:Ljava/nio/channels/FileChannel;
    .local v5, tempPos:J
    .local v7, buffer:[B
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fcOut:Ljava/nio/channels/FileChannel;
    .local v10, count:J
    .local v12, fos:Ljava/io/FileOutputStream;
    .local v13, oMessage:Landroid/os/Message;
    .restart local v15       #size:J
    :cond_41
    move-object v5, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local p2, fis:Ljava/io/FileInputStream;
    move-object v6, v13

    .end local v13           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    goto/16 :goto_c

    .end local v6           #oMessage:Landroid/os/Message;
    .end local p2           #fis:Ljava/io/FileInputStream;
    .local v5, position:J
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #oMessage:Landroid/os/Message;
    .restart local v17       #tempPos:J
    :cond_42
    move-wide/from16 v5, v17

    .end local v17           #tempPos:J
    .local v5, tempPos:J
    goto/16 :goto_11

    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v5, position:J
    .local v7, tempPos:J
    .local v12, fis:Ljava/io/FileInputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    :cond_43
    move-object v5, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object/from16 p2, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local p2       #fis:Ljava/io/FileInputStream;
    move-object v6, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .restart local v6       #oMessage:Landroid/os/Message;
    goto/16 :goto_c

    .end local v6           #oMessage:Landroid/os/Message;
    .end local v10           #count:J
    .local v5, position:J
    .local v7, count:J
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #oMessage:Landroid/os/Message;
    .restart local v17       #tempPos:J
    .local p2, nProgress:I
    :cond_44
    move-wide v10, v7

    .end local v7           #count:J
    .restart local v10       #count:J
    move-wide/from16 v7, v17

    .end local v17           #tempPos:J
    .local v7, tempPos:J
    goto/16 :goto_b

    .end local v5           #position:J
    .end local v7           #tempPos:J
    .end local v9           #fcOut:Ljava/nio/channels/FileChannel;
    .end local v10           #count:J
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #oMessage:Landroid/os/Message;
    .end local v15           #size:J
    .local v4, count:J
    .restart local v6       #oMessage:Landroid/os/Message;
    :cond_45
    move-object v4, v6

    .end local v6           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    goto/16 :goto_7

    .local v4, count:J
    .local v7, size:J
    .local v10, strSrcPath:Ljava/lang/String;
    .restart local v14       #oMessage:Landroid/os/Message;
    :cond_46
    move-object v4, v14

    .end local v14           #oMessage:Landroid/os/Message;
    .local v4, oMessage:Landroid/os/Message;
    goto/16 :goto_7

    .local v4, nNum:I
    .local v5, strDestPath:Ljava/lang/String;
    .local v6, strExtension:Ljava/lang/String;
    .local v7, strPath:Ljava/lang/String;
    .local v8, strPrefixFileName:Ljava/lang/String;
    .local p2, abKeepSrcFile:Z
    :cond_47
    move-object v9, v8

    .end local v8           #strPrefixFileName:Ljava/lang/String;
    .local v9, strPrefixFileName:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static copyFolder(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)I
    .locals 7
    .parameter "a_oContext"
    .parameter "a_oSrcPathFile"
    .parameter "a_oDestPathFile"
    .parameter "a_bKeepSrcFile"

    .prologue
    .line 731
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 732
    .local v0, oMessage:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 733
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 734
    sget-object v1, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 735
    sget-object v1, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    :cond_0
    sget-boolean v0, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    .end local v0           #oMessage:Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 738
    const/16 p0, -0x16

    .line 807
    .end local p0
    .end local p1
    .end local p3
    :goto_0
    return p0

    .line 740
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, strDestPath:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    .line 743
    const/16 p0, -0xd

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, strSrcPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_d

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #strSrcPath:Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #strSrcPath:Ljava/lang/String;
    move-object v6, v0

    .line 750
    .end local v0           #strSrcPath:Ljava/lang/String;
    .local v6, strSrcPath:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, strSrcTempPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_4

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #strSrcTempPath:Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    .restart local v0       #strSrcTempPath:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 757
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 758
    const/4 p0, -0x2

    goto/16 :goto_0

    .line 759
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #strSrcTempPath:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 760
    const/16 p0, -0x15

    goto/16 :goto_0

    .line 763
    :cond_6
    if-eqz p3, :cond_b

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    .end local p3
    if-nez p3, :cond_b

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 764
    const/4 p3, 0x1

    .line 765
    .local p3, nNum:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copy_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, strPrefixFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, strNewPath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x3c

    if-le v1, v4, :cond_7

    .line 769
    const/16 p0, -0x12

    goto/16 :goto_0

    .line 772
    :cond_7
    new-instance p2, Ljava/io/File;

    .end local p2
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .restart local p2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 776
    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #strNewPath:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, strPostfixFileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    .restart local v0       #strNewPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #strPostfixFileName:Ljava/lang/String;
    const/16 v4, 0x3c

    if-le v1, v4, :cond_8

    .line 781
    const/16 p0, -0x12

    goto/16 :goto_0

    .line 784
    :cond_8
    new-instance p2, Ljava/io/File;

    .end local p2
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local p2
    goto :goto_2

    .line 787
    :cond_9
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .end local p3           #nNum:I
    invoke-static {p0, v3, p3}, Lcom/infraware/filemanager/FmFileUtil;->makeNewFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 788
    invoke-static {p1, v0}, Lcom/infraware/filemanager/FmFileUtil;->countDuplicate(Ljava/io/File;Ljava/lang/String;)V

    .line 807
    .end local v0           #strNewPath:Ljava/lang/String;
    .end local v2           #strPrefixFileName:Ljava/lang/String;
    .end local p0
    .end local p1
    :cond_a
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 795
    .restart local p0
    .restart local p1
    :cond_b
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x3c

    if-le p1, p3, :cond_c

    .line 796
    const/16 p0, -0x12

    goto/16 :goto_0

    .line 799
    :cond_c
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/infraware/filemanager/FmFileUtil;->makeNewFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .end local p0
    if-nez p0, :cond_a

    .line 800
    sget-boolean p0, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    if-nez p0, :cond_a

    .line 801
    const/4 p0, 0x1

    sput-boolean p0, Lcom/infraware/filemanager/FmFileUtil;->m_bDuplicated:Z

    .line 802
    const/4 p0, -0x3

    goto/16 :goto_0

    .end local v6           #strSrcPath:Ljava/lang/String;
    .local v0, strSrcPath:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .local p3, a_bKeepSrcFile:Z
    :cond_d
    move-object v6, v0

    .end local v0           #strSrcPath:Ljava/lang/String;
    .restart local v6       #strSrcPath:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static countDuplicate(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .parameter "a_oSrcPathFile"
    .parameter "a_strDestPath"

    .prologue
    .line 1007
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1008
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_0
    return-void

    .line 1012
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1013
    .local v2, oSrcChildFile:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1016
    array-length v1, v2

    .line 1017
    .local v1, nFileCount:I
    if-lez v1, :cond_0

    .line 1018
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1019
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1020
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    :cond_2
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, strNewPath:Ljava/lang/String;
    :goto_2
    aget-object v4, v2, v0

    invoke-static {v4, v3}, Lcom/infraware/filemanager/FmFileUtil;->countDuplicate(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 1029
    .end local v3           #strNewPath:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #strNewPath:Ljava/lang/String;
    goto :goto_2
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3
    .parameter "a_strFilePath"

    .prologue
    .line 873
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    .local v1, oFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 879
    new-instance v0, Lcom/infraware/filemanager/bookclip/BookClipHelper;

    invoke-direct {v0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;-><init>()V

    .line 880
    .local v0, book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    invoke-virtual {v0, p0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->DeleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static deleteFileInFolder(Ljava/lang/String;)V
    .locals 5
    .parameter "a_strFolderName"

    .prologue
    .line 884
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .local v3, oFolder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 886
    .local v2, oChildFile:[Ljava/io/File;
    array-length v1, v2

    .line 887
    .local v1, nFileCount:I
    if-lez v1, :cond_0

    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 898
    .end local v0           #i:I
    :cond_0
    return-void

    .line 889
    .restart local v0       #i:I
    :cond_1
    sget-boolean v4, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-nez v4, :cond_0

    .line 891
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 892
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 888
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_2
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    goto :goto_1
.end method

.method public static deleteFolder(Ljava/io/File;)V
    .locals 4
    .parameter "a_oTargetFolder"

    .prologue
    .line 901
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 905
    .local v2, oChildFile:[Ljava/io/File;
    array-length v1, v2

    .line 906
    .local v1, nFileCount:I
    if-lez v1, :cond_2

    .line 907
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_3

    .line 917
    .end local v0           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 908
    .restart local v0       #i:I
    :cond_3
    sget-boolean v3, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-nez v3, :cond_0

    .line 910
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 911
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 907
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_4
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->deleteFolder(Ljava/io/File;)V

    goto :goto_2
.end method

.method public static get1DepthCount(Ljava/io/File;)I
    .locals 2
    .parameter "a_oSrcPathFile"

    .prologue
    .line 1047
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    const/4 v1, 0x0

    .line 1050
    :goto_0
    return v1

    .line 1049
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1050
    .local v0, oSrcChildFile:[Ljava/io/File;
    array-length v1, v0

    goto :goto_0
.end method

.method public static getCancel()Z
    .locals 1

    .prologue
    .line 1071
    sget-boolean v0, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    return v0
.end method

.method public static getCount(Ljava/io/File;Ljava/lang/String;Z)I
    .locals 9
    .parameter "a_oSrcPathFile"
    .parameter "a_strDestPath"
    .parameter "a_bKeepSrcFile"

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/16 v8, -0x16

    .line 955
    const/4 v2, 0x0

    .line 957
    .local v2, nResult:I
    sget-boolean v4, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    if-eqz v4, :cond_0

    move v4, v8

    .line 1003
    :goto_0
    return v4

    .line 960
    :cond_0
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    sget-object v5, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_1

    .line 961
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    .line 963
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_2

    .line 964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 966
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    .line 967
    sget-wide v4, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    .line 968
    sget v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .line 969
    if-nez p2, :cond_3

    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 970
    :cond_3
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_4
    sget v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    goto :goto_0

    .line 975
    :cond_5
    sget v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .line 976
    if-nez p2, :cond_6

    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 977
    :cond_6
    if-nez p2, :cond_7

    .line 978
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_deletePathList:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_7
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 983
    .local v3, oSrcChildFile:[Ljava/io/File;
    if-nez v3, :cond_8

    move v4, v8

    .line 984
    goto/16 :goto_0

    .line 986
    :cond_8
    array-length v1, v3

    .line 987
    .local v1, nFileCount:I
    if-lez v1, :cond_4

    .line 988
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 989
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_a

    .line 990
    sget-wide v4, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    .line 991
    sget v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    .line 992
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 995
    :cond_a
    aget-object v4, v3, v0

    invoke-static {v4, p1, p2}, Lcom/infraware/filemanager/FmFileUtil;->getCount(Ljava/io/File;Ljava/lang/String;Z)I

    move-result v2

    .line 996
    if-gez v2, :cond_9

    move v4, v8

    .line 997
    goto/16 :goto_0
.end method

.method public static getDeletePathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_deletePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDestPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1079
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1080
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_destPathList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExtString(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nFileType"

    .prologue
    .line 325
    packed-switch p0, :pswitch_data_0

    .line 338
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 327
    :pswitch_1
    const-string v0, "docx"

    goto :goto_0

    .line 328
    :pswitch_2
    const-string v0, "doc"

    goto :goto_0

    .line 329
    :pswitch_3
    const-string v0, "pdf"

    goto :goto_0

    .line 330
    :pswitch_4
    const-string v0, "ppt"

    goto :goto_0

    .line 331
    :pswitch_5
    const-string v0, "pps"

    goto :goto_0

    .line 332
    :pswitch_6
    const-string v0, "pptx"

    goto :goto_0

    .line 333
    :pswitch_7
    const-string v0, "xls"

    goto :goto_0

    .line 334
    :pswitch_8
    const-string v0, "xlsx"

    goto :goto_0

    .line 335
    :pswitch_9
    const-string v0, "txt"

    goto :goto_0

    .line 336
    :pswitch_a
    const-string v0, "zip"

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static getExtStringByDocType(I)Ljava/lang/String;
    .locals 1
    .parameter "a_nDocType"

    .prologue
    .line 209
    sparse-switch p0, :sswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 211
    :sswitch_0
    const-string v0, "ppt"

    goto :goto_0

    .line 212
    :sswitch_1
    const-string v0, "doc"

    goto :goto_0

    .line 213
    :sswitch_2
    const-string v0, "hwp"

    goto :goto_0

    .line 214
    :sswitch_3
    const-string v0, "gul"

    goto :goto_0

    .line 215
    :sswitch_4
    const-string v0, "xls"

    goto :goto_0

    .line 216
    :sswitch_5
    const-string v0, "pdf"

    goto :goto_0

    .line 217
    :sswitch_6
    const-string v0, "htm"

    goto :goto_0

    .line 218
    :sswitch_7
    const-string v0, "html"

    goto :goto_0

    .line 219
    :sswitch_8
    const-string v0, "mht"

    goto :goto_0

    .line 220
    :sswitch_9
    const-string v0, "mhtml"

    goto :goto_0

    .line 221
    :sswitch_a
    const-string v0, "txt"

    goto :goto_0

    .line 222
    :sswitch_b
    const-string v0, "docx"

    goto :goto_0

    .line 223
    :sswitch_c
    const-string v0, "pptx"

    goto :goto_0

    .line 224
    :sswitch_d
    const-string v0, "pps"

    goto :goto_0

    .line 225
    :sswitch_e
    const-string v0, "xlsx"

    goto :goto_0

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xc -> :sswitch_a
        0x12 -> :sswitch_b
        0x13 -> :sswitch_c
        0x14 -> :sswitch_e
        0x27 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getExtType(Ljava/lang/String;)I
    .locals 6
    .parameter "a_strFileName"

    .prologue
    .line 244
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, nLastIndexofDot:I
    const/4 v3, 0x0

    .line 247
    .local v3, strExtName:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 248
    .local v1, nIndex:I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v1, v4, :cond_0

    .line 249
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    :cond_0
    if-nez v3, :cond_1

    .line 252
    const/4 v4, 0x0

    .line 287
    :goto_0
    return v4

    .line 254
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, nExtType:I
    invoke-static {v3}, Lcom/infraware/filemanager/FmFileIcon;->getFileResID(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 284
    :pswitch_0
    const/4 v0, 0x6

    :goto_1
    move v4, v0

    .line 287
    goto :goto_0

    .line 258
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 259
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_1

    .line 260
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    .line 261
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    .line 262
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_1

    .line 263
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_1

    .line 264
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_1

    .line 265
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_1

    .line 266
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_1

    .line 267
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_1

    .line 268
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_1

    .line 269
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_1

    .line 270
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_1

    .line 271
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_1

    .line 272
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_1

    .line 273
    :pswitch_10
    const/16 v0, 0x11

    goto :goto_1

    .line 274
    :pswitch_11
    const/16 v0, 0x12

    goto :goto_1

    .line 275
    :pswitch_12
    const/16 v0, 0x13

    goto :goto_1

    .line 276
    :pswitch_13
    const/16 v0, 0x1a

    goto :goto_1

    .line 277
    :pswitch_14
    const/16 v0, 0x14

    goto :goto_1

    .line 278
    :pswitch_15
    const/16 v0, 0x15

    goto :goto_1

    .line 279
    :pswitch_16
    const/16 v0, 0x16

    goto :goto_1

    .line 280
    :pswitch_17
    const/16 v0, 0x18

    goto :goto_1

    .line 281
    :pswitch_18
    const/16 v0, 0x19

    goto :goto_1

    .line 282
    :pswitch_19
    const/16 v0, 0x17

    goto :goto_1

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x7f020194
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static getFileExtString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_strFullPath"

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, strFileName:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 239
    :goto_0
    return-object v2

    .line 235
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 236
    .local v0, nIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v2, v3

    .line 237
    goto :goto_0

    .line 239
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a_strFullPath"

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 195
    :goto_0
    return-object v1

    .line 192
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 193
    .local v0, nIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move-object v1, p0

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a_strFullPath"

    .prologue
    .line 198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    return-object v1

    .line 201
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 202
    .local v0, nIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move-object v1, p0

    .line 203
    goto :goto_0

    .line 204
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 3
    .parameter "a_strFilePath"

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, oPathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method public static getFileTypeStringResID(I)I
    .locals 2
    .parameter "a_nFileType"

    .prologue
    const v1, 0x7f0a0293

    const v0, 0x7f0a02a4

    .line 922
    packed-switch p0, :pswitch_data_0

    .line 950
    :goto_0
    :pswitch_0
    return v0

    .line 924
    :pswitch_1
    const v0, 0x7f0a02a1

    goto :goto_0

    .line 927
    :pswitch_2
    const v0, 0x7f0a029c

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 929
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 930
    goto :goto_0

    .line 933
    :pswitch_5
    const v0, 0x7f0a0299

    goto :goto_0

    .line 934
    :pswitch_6
    const v0, 0x7f0a0297

    goto :goto_0

    .line 936
    :pswitch_7
    const v0, 0x7f0a0298

    goto :goto_0

    .line 939
    :pswitch_8
    const v0, 0x7f0a029a

    goto :goto_0

    .line 940
    :pswitch_9
    const v0, 0x7f0a029b

    goto :goto_0

    .line 941
    :pswitch_a
    const v0, 0x7f0a029e

    goto :goto_0

    .line 942
    :pswitch_b
    const v0, 0x7f0a0390

    goto :goto_0

    .line 943
    :pswitch_c
    const v0, 0x7f0a0295

    goto :goto_0

    .line 944
    :pswitch_d
    const v0, 0x7f0a0294

    goto :goto_0

    .line 945
    :pswitch_e
    const v0, 0x7f0a02a2

    goto :goto_0

    .line 946
    :pswitch_f
    const v0, 0x7f0a0296

    goto :goto_0

    .line 947
    :pswitch_10
    const v0, 0x7f0a029d

    goto :goto_0

    .line 948
    :pswitch_11
    const v0, 0x7f0a029f

    goto :goto_0

    .line 922
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public static getFolderSize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strCurPath"

    .prologue
    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public static getFullSize()J
    .locals 2

    .prologue
    .line 1043
    sget-wide v0, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    return-wide v0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "a_strFullPath"

    .prologue
    .line 52
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 53
    .local v0, nIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    move-object v2, p0

    .line 57
    :goto_0
    return-object v2

    .line 56
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, strPath:Ljava/lang/String;
    move-object v2, v1

    .line 57
    goto :goto_0
.end method

.method public static getReleativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a_strStandPath"
    .parameter "a_strTargetPath"

    .prologue
    .line 61
    move-object v0, p1

    .line 62
    .local v0, strResult:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method public static getResID(I)I
    .locals 1
    .parameter "a_nFileType"

    .prologue
    .line 291
    packed-switch p0, :pswitch_data_0

    .line 320
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 293
    :pswitch_1
    const v0, 0x7f020194

    goto :goto_0

    .line 294
    :pswitch_2
    const v0, 0x7f020195

    goto :goto_0

    .line 295
    :pswitch_3
    const v0, 0x7f020197

    goto :goto_0

    .line 296
    :pswitch_4
    const v0, 0x7f020198

    goto :goto_0

    .line 297
    :pswitch_5
    const v0, 0x7f020199

    goto :goto_0

    .line 298
    :pswitch_6
    const v0, 0x7f02019b

    goto :goto_0

    .line 299
    :pswitch_7
    const v0, 0x7f02019c

    goto :goto_0

    .line 300
    :pswitch_8
    const v0, 0x7f02019d

    goto :goto_0

    .line 301
    :pswitch_9
    const v0, 0x7f02019e

    goto :goto_0

    .line 302
    :pswitch_a
    const v0, 0x7f02019f

    goto :goto_0

    .line 303
    :pswitch_b
    const v0, 0x7f0201a0

    goto :goto_0

    .line 304
    :pswitch_c
    const v0, 0x7f0201a1

    goto :goto_0

    .line 305
    :pswitch_d
    const v0, 0x7f0201a2

    goto :goto_0

    .line 306
    :pswitch_e
    const v0, 0x7f0201a4

    goto :goto_0

    .line 307
    :pswitch_f
    const v0, 0x7f0201a5

    goto :goto_0

    .line 308
    :pswitch_10
    const v0, 0x7f0201a6

    goto :goto_0

    .line 309
    :pswitch_11
    const v0, 0x7f0201a8

    goto :goto_0

    .line 310
    :pswitch_12
    const v0, 0x7f0201a7

    goto :goto_0

    .line 311
    :pswitch_13
    const v0, 0x7f0201a9

    goto :goto_0

    .line 312
    :pswitch_14
    const v0, 0x7f0201ac

    goto :goto_0

    .line 313
    :pswitch_15
    const v0, 0x7f0201ad

    goto :goto_0

    .line 314
    :pswitch_16
    const v0, 0x7f0201ae

    goto :goto_0

    .line 315
    :pswitch_17
    const v0, 0x7f0201af

    goto :goto_0

    .line 316
    :pswitch_18
    const v0, 0x7f0201b0

    goto :goto_0

    .line 317
    :pswitch_19
    const v0, 0x7f0201b1

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_17
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method

.method public static getSizeString(J)Ljava/lang/String;
    .locals 4
    .parameter "a_nSize"

    .prologue
    .line 111
    const/high16 v0, 0x4e80

    .line 112
    .local v0, nGiga:F
    const/high16 v0, 0x4980

    .line 113
    .local v0, nMega:F
    const/high16 v0, 0x4480

    .line 115
    .local v0, nKilo:F
    const-string v0, "GB"

    .line 116
    .local v0, strGiga:Ljava/lang/String;
    const-string v0, "MB"

    .line 117
    .local v0, strMega:Ljava/lang/String;
    const-string v0, "KB"

    .line 118
    .local v0, strKilo:Ljava/lang/String;
    const-string v0, "Bytes"

    .line 122
    .local v0, strBytes:Ljava/lang/String;
    const/4 v0, 0x0

    .line 124
    .local v0, nUnitSize:F
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 125
    const/4 p0, 0x0

    move-object p1, p0

    move p0, v0

    .line 162
    .end local v0           #nUnitSize:F
    .local p0, nUnitSize:F
    :goto_0
    return-object p1

    .line 127
    .restart local v0       #nUnitSize:F
    .local p0, a_nSize:J
    :cond_0
    long-to-float v0, p0

    const/high16 v1, 0x4e80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 129
    .end local v0           #nUnitSize:F
    long-to-float v0, p0

    const/high16 v1, 0x4e80

    div-float/2addr v0, v1

    .line 130
    .restart local v0       #nUnitSize:F
    const-string v1, "GB"

    .line 148
    .local v1, strUnit:Ljava/lang/String;
    :goto_1
    long-to-float p0, p0

    const/high16 p1, 0x4480

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_4

    .end local p0           #a_nSize:J
    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 149
    .local p0, nLen:I
    :goto_2
    packed-switch p0, :pswitch_data_0

    .line 158
    const-string p0, "%d %s"

    .end local p0           #nLen:I
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    float-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 161
    .local p0, strBuf:Ljava/lang/String;
    :goto_3
    move-object p0, p0

    .local p0, m_strSize:Ljava/lang/String;
    move-object p1, p0

    move p0, v0

    .line 162
    .end local v0           #nUnitSize:F
    .local p0, nUnitSize:F
    goto :goto_0

    .line 132
    .end local v1           #strUnit:Ljava/lang/String;
    .local p0, a_nSize:J
    :cond_1
    long-to-float v0, p0

    const/high16 v1, 0x4980

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 134
    long-to-float v0, p0

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 135
    .restart local v0       #nUnitSize:F
    const-string v1, "MB"

    .restart local v1       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v0           #nUnitSize:F
    .end local v1           #strUnit:Ljava/lang/String;
    :cond_2
    long-to-float v0, p0

    const/high16 v1, 0x4480

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 139
    long-to-float v0, p0

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    .line 140
    .restart local v0       #nUnitSize:F
    const-string v1, "KB"

    .restart local v1       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 144
    .end local v0           #nUnitSize:F
    .end local v1           #strUnit:Ljava/lang/String;
    :cond_3
    long-to-float v0, p0

    .line 145
    .restart local v0       #nUnitSize:F
    const-string v1, "Bytes"

    .restart local v1       #strUnit:Ljava/lang/String;
    goto :goto_1

    .line 148
    .end local p0           #a_nSize:J
    :cond_4
    const/4 p0, -0x1

    goto :goto_2

    .line 152
    .local p0, nLen:I
    :pswitch_0
    const-string p0, "%.2f %s"

    .end local p0           #nLen:I
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 153
    .local p0, strBuf:Ljava/lang/String;
    goto :goto_3

    .line 155
    .local p0, nLen:I
    :pswitch_1
    const-string p0, "%.1f %s"

    .end local p0           #nLen:I
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 156
    .local p0, strBuf:Ljava/lang/String;
    goto :goto_3

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSrcParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getSrcPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    sget-object v0, Lcom/infraware/filemanager/FmFileUtil;->m_srcPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isAvailableFilename(Ljava/lang/String;)Z
    .locals 4
    .parameter "a_strFileName"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 77
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, strTrimmedFileName:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 105
    :goto_1
    return v1

    .line 81
    .end local v0           #strTrimmedFileName:Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .restart local v0       #strTrimmedFileName:Ljava/lang/String;
    goto :goto_0

    .line 85
    :cond_1
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    move v1, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    move v1, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    move v1, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    move v1, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    move v1, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7

    move v1, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_7
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_8

    move v1, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_8
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_9

    move v1, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_a
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    .line 104
    goto :goto_1

    .line 105
    :cond_b
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isDocType(I)Z
    .locals 1
    .parameter "a_nExtType"

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 179
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "a_strName"

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, oNewPathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static makeNewFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "a_oContext"
    .parameter "a_strCurPath"
    .parameter "a_strFileName"

    .prologue
    const/4 v5, 0x0

    .line 382
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v5

    .line 400
    :goto_0
    return v3

    .line 385
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, strNewFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, oNewPathFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 394
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v5

    .line 400
    goto :goto_0
.end method

.method public static makeNewFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "a_oContext"
    .parameter "a_strCurPath"
    .parameter "a_strFolderName"

    .prologue
    const/4 v6, 0x0

    .line 361
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    move v4, v6

    .line 378
    :goto_0
    return v4

    .line 364
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, strNewFolderPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, oNewPathFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 367
    goto :goto_0

    .line 369
    :cond_1
    sget-wide v4, Lcom/infraware/filemanager/FmFileUtil;->m_nFullSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 370
    const/16 v4, 0x64

    sget v5, Lcom/infraware/filemanager/FmFileUtil;->m_nCount:I

    div-int v0, v4, v5

    .line 371
    .local v0, nProgress:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 372
    .local v1, oMessage:Landroid/os/Message;
    const/16 v4, 0x12

    iput v4, v1, Landroid/os/Message;->what:I

    .line 373
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 374
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 375
    sget-object v4, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v0           #nProgress:I
    .end local v1           #oMessage:Landroid/os/Message;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static onAttachFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "a_oContext"
    .parameter "fileName"

    .prologue
    .line 812
    const/4 v3, 0x0

    .line 813
    .local v3, mimeType:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 817
    .local v5, uri:Landroid/net/Uri;
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 818
    .local v1, idx_exe:I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, temp:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v2, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 824
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    :goto_0
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 829
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const v7, 0x7f0a024f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    .line 831
    .local v6, wrapperIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 832
    return-void

    .line 826
    .end local v6           #wrapperIntent:Landroid/content/Intent;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "application/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static onViewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "a_oContext"
    .parameter "fileName"

    .prologue
    .line 836
    const/4 v3, 0x0

    .line 837
    .local v3, mimeType:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 841
    .local v6, uri:Landroid/net/Uri;
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 842
    .local v1, idx_exe:I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, temp:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 847
    if-eqz v3, :cond_1

    const-string v8, "text/html"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "text/htm"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 848
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 849
    .local v2, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v5, "application/x-webarchive-xml"

    .line 852
    .local v5, type:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 865
    .end local v5           #type:Ljava/lang/String;
    :goto_0
    return-void

    .line 857
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .restart local v2       #intent:Landroid/content/Intent;
    if-nez v3, :cond_2

    .line 859
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "application/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 861
    :cond_2
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const v8, 0x7f0a036b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 863
    .local v7, wrapperIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "a_oContext"
    .parameter "a_strCurPath"
    .parameter "a_strOldName"
    .parameter "a_strNewName"

    .prologue
    const/4 v6, 0x0

    .line 343
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    const-string v4, "/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    move v4, v6

    .line 357
    :goto_0
    return v4

    .line 346
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, strOldFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, strNewFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, oNewFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    .line 351
    goto :goto_0

    .line 353
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, oOldFile:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    .line 355
    goto :goto_0

    .line 357
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static setCancel(Z)V
    .locals 0
    .parameter "a_bCancel"

    .prologue
    .line 1067
    sput-boolean p0, Lcom/infraware/filemanager/FmFileUtil;->m_bCancel:Z

    .line 1068
    return-void
.end method

.method public static setMessageHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "a_oHandler"

    .prologue
    .line 1063
    sput-object p0, Lcom/infraware/filemanager/FmFileUtil;->m_oHandler:Landroid/os/Handler;

    .line 1064
    return-void
.end method

.method public static setSrcParentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strStcPath"

    .prologue
    .line 1092
    sput-object p0, Lcom/infraware/filemanager/FmFileUtil;->m_strSrcParentPath:Ljava/lang/String;

    .line 1093
    return-void
.end method
