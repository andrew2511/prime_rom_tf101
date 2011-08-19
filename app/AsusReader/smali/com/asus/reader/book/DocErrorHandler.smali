.class public Lcom/asus/reader/book/DocErrorHandler;
.super Ljava/lang/Object;
.source "DocErrorHandler.java"


# static fields
.field public static E_PDF_STD_SECURITY_PASSWORD:Ljava/lang/String;

.field public static sDocErrorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/DocErrorHandler;->sDocErrorList:Ljava/util/HashMap;

    .line 11
    const-string v0, "E_PDF_STD_SECURITY_PASSWORD"

    sput-object v0, Lcom/asus/reader/book/DocErrorHandler;->E_PDF_STD_SECURITY_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "c"
    .parameter "docPath"

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 16
    .local v1, retString:Ljava/lang/String;
    sget-object v2, Lcom/asus/reader/book/DocErrorHandler;->sDocErrorList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    .local v0, rawErrorString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 18
    const/16 v2, 0x20

    const/16 v3, 0x2b

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-object v2, Lcom/asus/reader/book/DocErrorHandler;->sDocErrorList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rawErrorString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 21
    .restart local v0       #rawErrorString:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0, v0}, Lcom/asus/reader/book/DocErrorHandler;->getUserFriendlyErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_1
    return-object v1
.end method

.method private static getUserFriendlyErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .parameter "rawErrorString"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, retString:Ljava/lang/String;
    sget-object v1, Lcom/asus/reader/book/DocErrorHandler;->E_PDF_STD_SECURITY_PASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 30
    const v1, 0x7f0700e4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    return-object v0
.end method
