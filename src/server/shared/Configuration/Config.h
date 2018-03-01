/*
* Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
* Copyright (C) 2018-2018 MaxtorCoder <https://github.com/warsongkiller/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef CONFIG_H
#define CONFIG_H

#include <string>
#include <list>
#include <ace/Singleton.h>
#include <ace/Configuration_Import_Export.h>
#include <AutoPtr.h>
#include <mutex>

typedef MoPCore::AutoPtr<ACE_Configuration_Heap, ACE_Null_Mutex> Config;

class ConfigMgr
{
	friend class ACE_Singleton<ConfigMgr, ACE_Null_Mutex>;
	friend class ConfigLoader;

	ConfigMgr() {}
	~ConfigMgr() {}

public:
	/// Method used only for loading main configuration files (authserver.conf and worldserver.conf)
	bool LoadInitial(char const* file);

	/**
	* This method loads additional configuration files
	* It is recommended to use this methond in WorldScript::OnConfigLoad hooks
	*
	* @return true of loading was succesfull
	*/
	bool LoadMore(char const* file);

	bool Reload();

	std::string GetStringDefault(const char* name, const std::string& def);
	bool GetBoolDefault(const char* name, bool def);
	int GetIntDefault(const char* name, int def);
	float GetFloatDefault(const char* name, float def);

	std::string const& GetFilename();
	std::list<std::string> GetKeysByString(std::string const& name);

private:
	bool GetValueHelper(const char* name, ACE_TString &result);
	bool LoadData(char const* file);

	typedef std::mutex LockType;
	typedef std::lock_guard<std::mutex> GuardType;

	std::string _filename;
	Config _config;
	LockType _configLock;

	ConfigMgr(ConfigMgr const&);
	ConfigMgr& operator=(ConfigMgr const&);
};

#define sConfigMgr ACE_Singleton<ConfigMgr, ACE_Null_Mutex>::instance()

#endif

