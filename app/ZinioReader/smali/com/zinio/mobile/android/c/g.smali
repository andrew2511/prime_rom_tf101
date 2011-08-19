.class public final Lcom/zinio/mobile/android/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "http://www.zinio.com/legal/"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/g;->a:Ljava/lang/String;

    .line 14
    const-string v0, "http://www.zinio.com/mobile/smartphone/faq/index.jsp?pid=100012"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/g;->b:Ljava/lang/String;

    .line 18
    const-string v0, "http://www.zinio.com/account/forgot-password.jsp"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/g;->c:Ljava/lang/String;

    .line 22
    const-string v0, "market://details?id=com.zinio.mobile.android.view"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/g;->d:Ljava/lang/String;

    .line 26
    const-string v0, "http://www.zinio.com/mobile/smartphone/browse/index.jsp?em=[email]&pid=100012"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/g;->e:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/g;->f:Z

    return-void
.end method
