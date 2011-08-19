.class final enum Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;
.super Ljava/lang/Enum;
.source "ZipDecryptInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPRESSED_SIZE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum DATA:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum EF_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum FLAGS:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum HEADER:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field public static final enum TAIL:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "SIGNATURE"

    invoke-direct {v0, v1, v3}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1, v4}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "COMPRESSED_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "FN_LENGTH"

    invoke-direct {v0, v1, v6}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "EF_LENGTH"

    invoke-direct {v0, v1, v7}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "HEADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "DATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    new-instance v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    const-string v1, "TAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 170
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ENUM$VALUES:[Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    return-object p0
.end method

.method public static values()[Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ENUM$VALUES:[Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
