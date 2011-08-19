.class Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;
.super Ljava/lang/Object;
.source "SearchUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainFetchHelper"
.end annotation


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mGotCountryCode:Z

.field private mGotDomain:Z

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method


# virtual methods
.method public setCountryCode(Ljava/lang/String;)V
    .locals 3
    .parameter "countryCode"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mCountryCode:Ljava/lang/String;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mGotCountryCode:Z

    .line 367
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mGotDomain:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->access$100(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 3
    .parameter "domain"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mDomain:Ljava/lang/String;

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mGotDomain:Z

    .line 359
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mGotCountryCode:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->this$0:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$DomainFetchHelper;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->access$100(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method
