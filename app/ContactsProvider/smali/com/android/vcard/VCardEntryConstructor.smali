.class public Lcom/android/vcard/VCardEntryConstructor;
.super Ljava/lang/Object;
.source "VCardEntryConstructor.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCurrentProperty:Lcom/android/vcard/VCardEntry$Property;

.field private final mEntryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceCharset:Ljava/lang/String;

.field private final mStrictLineBreaking:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "VCardEntryConstructor"

    sput-object v0, Lcom/android/vcard/VCardEntryConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    const/high16 v0, -0x4000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 68
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 2
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .parameter "vcardType"
    .parameter "account"
    .parameter "inputCharset"
    .parameter "strictLineBreakParsing"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/vcard/VCardEntry$Property;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$Property;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mCurrentProperty:Lcom/android/vcard/VCardEntry$Property;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mEntryHandlers:Ljava/util/List;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    iput-object p3, p0, Lcom/android/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    .line 93
    :goto_0
    iput-boolean p4, p0, Lcom/android/vcard/VCardEntryConstructor;->mStrictLineBreaking:Z

    .line 94
    iput p1, p0, Lcom/android/vcard/VCardEntryConstructor;->mVCardType:I

    .line 95
    iput-object p2, p0, Lcom/android/vcard/VCardEntryConstructor;->mAccount:Landroid/accounts/Account;

    .line 96
    return-void

    .line 91
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardEntryConstructor;->mSourceCharset:Ljava/lang/String;

    goto :goto_0
.end method
