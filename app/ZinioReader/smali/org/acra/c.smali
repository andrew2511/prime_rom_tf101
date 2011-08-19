.class final Lorg/acra/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lorg/acra/CrashReportDialog;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    iput-object p2, p0, Lorg/acra/c;->b:Landroid/os/Bundle;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-static {}, Lorg/acra/ErrorReporter;->a()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v1}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v1}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v1, Lorg/acra/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/acra/i;-><init>(Lorg/acra/ErrorReporter;)V

    .line 124
    iget-object v0, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    iget-object v0, v0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/acra/i;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lorg/acra/i;->start()V

    .line 128
    iget-object v0, p0, Lorg/acra/c;->b:Landroid/os/Bundle;

    .line 129
    const-string v1, "RES_DIALOG_OK_TOAST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v1}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    const/4 v2, 0x1

    .line 131
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/acra/c;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 135
    return-void
.end method
