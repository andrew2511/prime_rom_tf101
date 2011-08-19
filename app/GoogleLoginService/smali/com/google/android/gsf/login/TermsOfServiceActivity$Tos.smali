.class public Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/TermsOfServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tos"
.end annotation


# instance fields
.field private final mContent:Ljava/lang/String;

.field private final mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "content"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->mContent:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->mContentType:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;->mContentType:Ljava/lang/String;

    return-object v0
.end method
