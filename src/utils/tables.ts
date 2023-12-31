/* eslint-disable semi */
export default interface Tables {
	//Server Side

	Modules: {
		ServerId: string;
		ModuleMo: boolean;
		ModuleLv: boolean;
		ModuleEc: boolean;
		ModuleTk: boolean;
		ModuleWc: boolean;
	};
	Channels: {
		ServerId: string;
		WelcomeChannel: string;
		GoodbyeChannel: string;
		RankupsChannel: string;
		SkippedChannel1: string;
		SkippedChannel2: string;
		SkippedChannel3: string;
	};

	//Client Side

	Leveling: {
		ServerId: string;
		MemberId: string;
		UsrLevel: number;
		UsrBooster: string;
		UsrXpFarmed: number;
		UsrXpNeeded: number;
	};
	Economy: {
		ServerId: string;
		MemberId: string;
		UsrMoney: number;
		UsrBank: number;
		UsrCasino: number;
	};
	Moderation: {
		ServerId: string;
		MemberId: string;
		Bans: number;
		Kick: number;
		Mute: number;
		Warn: number;
	};
}
