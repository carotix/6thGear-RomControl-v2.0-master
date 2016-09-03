.class public Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;
.super Landroid/widget/TextView;
.source "CurrentNetwork.java"


# static fields
.field private static final UPDATE_INTENT:Ljava/lang/String; = "network_update"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$1;-><init>(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;-><init>(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->wifiReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->currentNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->updateNetwork()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCurrentSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private currentNetwork()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCurrentSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCarrier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCarrier()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setGravity(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setTextSize(IF)V

    const-string v0, "Network\nUnavailable"

    :cond_0
    return-object v0
.end method

.method private getCurrentSSID()Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method private initValues()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    move v1, v0

    :goto_0
    return-void

    :cond_0
    const-string v4, "loading"

    invoke-virtual {p0, v4}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNetwork()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->currentNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "network_update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->updateNetwork()V

    return-void
.end method
