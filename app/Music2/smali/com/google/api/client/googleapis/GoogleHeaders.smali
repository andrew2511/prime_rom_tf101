.class public Lcom/google/api/client/googleapis/GoogleHeaders;
.super Lcom/google/api/client/http/HttpHeaders;
.source "GoogleHeaders.java"


# static fields
.field public static final SLUG_ESCAPER:Lcom/google/api/client/escape/PercentEscaper;


# instance fields
.field public gdataClient:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Client"
    .end annotation
.end field

.field public gdataKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Key"
    .end annotation
.end field

.field public gdataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "GData-Version"
    .end annotation
.end field

.field public googAcl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-acl"
    .end annotation
.end field

.field public googCopySource:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source"
    .end annotation
.end field

.field public googCopySourceIfMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-match"
    .end annotation
.end field

.field public googCopySourceIfModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-modified-since"
    .end annotation
.end field

.field public googCopySourceIfNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-none-match"
    .end annotation
.end field

.field public googCopySourceIfUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-unmodified-since"
    .end annotation
.end field

.field public googDate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-date"
    .end annotation
.end field

.field public googMetadataDirective:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-metadata-directive"
    .end annotation
.end field

.field public methodOverride:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-HTTP-Method-Override"
    .end annotation
.end field

.field public slug:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Slug"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/api/client/escape/PercentEscaper;

    const-string v1, " !\"#$&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/googleapis/GoogleHeaders;->SLUG_ESCAPER:Lcom/google/api/client/escape/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    return-void
.end method

.method public static getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authToken"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLogin auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationName"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->userAgent:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDeveloperId(Ljava/lang/String;)V
    .locals 2
    .parameter "developerId"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataKey:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setGoogleLogin(Ljava/lang/String;)V
    .locals 1
    .parameter "authToken"

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/api/client/googleapis/GoogleHeaders;->getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->authorization:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setSlugFromFileName(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 127
    sget-object v0, Lcom/google/api/client/googleapis/GoogleHeaders;->SLUG_ESCAPER:Lcom/google/api/client/escape/PercentEscaper;

    invoke-virtual {v0, p1}, Lcom/google/api/client/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->slug:Ljava/lang/String;

    .line 128
    return-void
.end method
