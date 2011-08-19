.class public Lcom/amazon/kcp/library/dictionary/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final ENGLISH:Lcom/amazon/kcp/library/dictionary/Language;

.field public static final GERMAN:Lcom/amazon/kcp/library/dictionary/Language;

.field public static final SWISS_HIGH_GERMAN:Lcom/amazon/kcp/library/dictionary/Language;


# instance fields
.field private final languageCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/amazon/kcp/library/dictionary/Language;

    const-string v1, "en"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/dictionary/Language;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/Language;->ENGLISH:Lcom/amazon/kcp/library/dictionary/Language;

    .line 19
    new-instance v0, Lcom/amazon/kcp/library/dictionary/Language;

    const-string v1, "de"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/dictionary/Language;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/Language;->GERMAN:Lcom/amazon/kcp/library/dictionary/Language;

    .line 24
    new-instance v0, Lcom/amazon/kcp/library/dictionary/Language;

    const-string v1, "de-CH"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/dictionary/Language;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/Language;->SWISS_HIGH_GERMAN:Lcom/amazon/kcp/library/dictionary/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "languageCode"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/Language;->languageCode:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getIetfBcp47Code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/Language;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/Language;->languageCode:Ljava/lang/String;

    return-object v0
.end method
