.class public final Lcom/google/zxing/integration/android/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/lang/String; = null

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "This application requires Barcode Scanner. Would you like to install it?"

.field public static final DEFAULT_NO:Ljava/lang/String; = "No"

.field public static final DEFAULT_TITLE:Ljava/lang/String; = "Install Barcode Scanner?"

.field public static final DEFAULT_YES:Ljava/lang/String; = "Yes"

.field public static final ONE_D_CODE_TYPES:Ljava/lang/String; = "UPC_A,UPC_E,EAN_8,EAN_13,CODE_39,CODE_128"

.field public static final PRODUCT_CODE_TYPES:Ljava/lang/String; = "UPC_A,UPC_E,EAN_8,EAN_13"

.field public static final QR_CODE_TYPES:Ljava/lang/String; = "QR_CODE"

.field public static final REQUEST_CODE:I = 0xba7c0de


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static initiateScan(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "activity"

    .prologue
    .line 102
    const-string v0, "Install Barcode Scanner?"

    const-string v1, "This application requires Barcode Scanner. Would you like to install it?"

    const-string v2, "Yes"

    const-string v3, "No"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;IIII)Landroid/app/AlertDialog;
    .locals 4
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 140
    sget-object v5, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"
    .parameter "stringDesiredBarcodeFormats"

    .prologue
    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.zxing.client.android.SCAN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, intentScan:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    if-eqz p5, :cond_0

    .line 175
    const-string v2, "SCAN_FORMATS"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 179
    :cond_0
    const v2, 0xba7c0de

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v2, 0x0

    .line 182
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/zxing/integration/android/IntentIntegrator;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 217
    const v2, 0xba7c0de

    if-ne p0, v2, :cond_1

    .line 218
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 219
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, contents:Ljava/lang/String;
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, formatName:Ljava/lang/String;
    new-instance v2, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v0           #contents:Ljava/lang/String;
    .end local v1           #formatName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 223
    :cond_0
    new-instance v2, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {v2, v3, v3}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 226
    goto :goto_0
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 234
    const-string v2, "Install Barcode Scanner?"

    const-string v3, "This application requires Barcode Scanner. Would you like to install it?"

    const-string v4, "Yes"

    const-string v5, "No"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentIntegrator;->shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;IIII)V
    .locals 6
    .parameter "activity"
    .parameter "text"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 247
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/integration/android/IntentIntegrator;->shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "activity"
    .parameter "text"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 274
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "ENCODE_TYPE"

    const-string v3, "TEXT_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v2, "ENCODE_DATA"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 279
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/zxing/integration/android/IntentIntegrator;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, downloadDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    new-instance v1, Lcom/google/zxing/integration/android/IntentIntegrator$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/integration/android/IntentIntegrator$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    new-instance v1, Lcom/google/zxing/integration/android/IntentIntegrator$2;

    invoke-direct {v1}, Lcom/google/zxing/integration/android/IntentIntegrator$2;-><init>()V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
